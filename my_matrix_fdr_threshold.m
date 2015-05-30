function fdr_thresh = my_matrix_fdr_threshold( stats_map, df, fdr,input_thresh,mask)

%FALSE_DISCOVERY_RATE 
%
% [FDR_THRESH, BON_THRESH] = MY_FDR_THRESHOLD( STATS_MAP, [DF, [FDR [, NCONJ [, NVAR ]]]])
%
% STATS_MAP is column vector of statistics.
%
% DF: If a scalar, then it is the df of the t statistic image;
% if DF >=1000 then DF is set it Inf, so that it calculates 
% thresholds for a Gaussian image (if DF is very large the t-dbn 
% is almost identical to the Gaussian dbn).
% If DF=[DF1, DF2] then these are the df's of the F statistic image.
% If DF2 >= 1000 then DF2 is set to Inf. Default is Inf.
%
% FDR is the desired false discovery rate. 
% If the first element is greater than 1, then they are treated as 
% thresholds and Q-values are returned. Default is 0.05.
%


% Defaults:
if nargin<2;  df=[];  end
if nargin<3;  fdr=[];  end
if nargin<4;  input_thresh=[];  end
if nargin<5;  mask=[];  end

if isempty(df);  df=Inf;  end
if isempty(fdr);  fdr=0.05;  end

if length(df)==1
    df=[df 0];
end
if size(df,1)==1
    df=[df; Inf Inf];
end
if size(df,2)==1
    df=[df [0; df(2,1)]];
end

% is_tstat=1 if it is a t statistic
is_tstat=(df(1,2)==0);

if is_tstat
   df1=1;
   df2=df(1,1);
else
   df1=df(1,1);
   df2=df(1,2);
end
if df2 >= 1000
   df2=Inf;
end
nvar=1;

% Values of the F statistic or T^2/df1 based on squares of t values:
t=[100:-0.1:10.1 10:-0.01:0].^2;

% Find the upper tail probs of the F distribution by 
% cumulating the F density using the mid-point rule:
n=length(t);
n1=1:(n-1);
tt=(t(n1)+t(n1+1))/2;
if df2==Inf
   u=df1*tt;
   b=exp(-u/2-gammaln(df1/2)-df1/2*log(2)+(df1/2-1)*log(u));
else  
   u=df1*tt/df2;
   b=exp(-(df1+df2)/2*log(1+u)+(df1/2-1)*log(u)-betaln(df1/2,df2/2))*df1/df2;
end
D=0;
tau=zeros(D+nvar,n);
tau(1,:)=[0 -cumsum(b.*diff(t))];

% Find the EC densities:
y=df1*t;
for N=1:D+nvar-1
   s1=0;
   for i=0:(N-1)
      j=0:min(N-1-i,i);
      if df2==Inf
         s2=sum(exp(nchoosekln(df1-1+j-j,N-1-i-j) ...
            -gammaln(j+1)-gammaln(i-j+1)-j*log(2)));
      else
         s2=sum(exp(nchoosekln(df1-1+j-j,N-1-i-j) ...
            +nchoosekln((df1+df2-N)/2+j-1,j) ...
            +nchoosekln(df2-1+j-j,i-j)-i*log(df2)));
      end
      if s2>0
         s1=s1+(-1)^(N-1-i)*y.^(i+(df1-N)/2)*s2;
      end
   end
   if df2==Inf
      cons=-gammaln(df1/2)-N/2*log(2*pi)-(df1-2)/2*log(2)+gammaln(N);
      tau(N+1,:)=exp(cons-y/2).*s1;
   else   
      cons=-gammaln(df1/2)-N/2*log(2*pi)-(df1-2)/2*log(2)+gammaln(N) ...
         +gammaln((df1+df2-N)/2)-gammaln(df2/2)-(df1-N)/2*log(df2/2);
      tau(N+1,:)=exp(cons-(df1+df2-2)/2*log(1+y/df2)).*s1;
   end
end

% For multivariate statistics, add a sphere to the search region:
j=(nvar-1):-2:0;
invol_sphere=zeros(1,nvar);
invol_sphere(j+1)=exp(j*log(2)+j/2*log(pi) ...
   +gammaln((nvar+1)/2)-gammaln((nvar+1-j)/2)-gammaln(j+1));
rho=toeplitz([invol_sphere(1) zeros(1,D)]',[invol_sphere zeros(1,D)])*tau;

pt=rho(1,:);
if is_tstat
   t=[sqrt(t(n1)) -fliplr(sqrt(t))];
   pt=[pt(n1)/2 1-fliplr(pt)/2];
end
nconj=1;
pt=pt.^nconj;

if isempty(input_thresh)
    input_thresh=stat_threshold(0,1,0,df,fdr,[],[],nconj,nvar);
end
[nY,nv] = size(stats_map);
if isempty(mask)
    mask = (1:nv)>0;
end
fdr_thresh = zeros(nY,1);
Y = stats_map.*double(repmat(mask,nY,1));
mask_Y = abs(Y)>input_thresh;
Y = Y.*double(mask_Y);
num_voxels = sum(mask);
num_voxels_Y = sum(mask_Y,2);
ind_emptyY = num_voxels_Y==0;
if any(ind_emptyY)
    fdr_thresh(ind_emptyY) = Inf;
end
if all(ind_emptyY)
    return
else
    Y = abs(Y(~ind_emptyY,:));
    num_voxels_Y = num_voxels_Y(~ind_emptyY);
    mask_Y = mask_Y(~ind_emptyY,:);
end
nY = sum(~ind_emptyY);
fdr_thresh_tmp = zeros(nY,1);

% False discovery rate
P_val = interp1(t,pt,Y,'linear',0);
P_val(~mask_Y) = Inf;
[P_sort,index] = sort(P_val,2);
tmp_num_voxels_Y = repmat(num_voxels_Y(:),1,nv);
tmp_nv = repmat(1:nv,nY,1);
den_P_sort = tmp_nv<=tmp_num_voxels_Y;
den_P_sort = tmp_nv.*den_P_sort;

% False discovery rate threshold:
q = (P_sort./den_P_sort)*num_voxels; %Benjamini (1995)
%q=P_sort./(num_voxels+1-(1:length(P_sort))'); %Hochberg(1988)
mask_q = (q <= fdr);
ind_q = sum(mask_q,2)==0;
[tmp,r] = max(cumsum(mask_q,2),[],2);
fdr_thresh_tmp(ind_q) = Inf;
tmp = diag(index(:,r));
tmp = diag(Y(:,tmp));
fdr_thresh_tmp(~ind_q) = tmp(~ind_q);
fdr_thresh(~ind_emptyY) = fdr_thresh_tmp;

function x=nchoosekln(n,k)
i=find(n>=0 & k>=0 & n>=k);
x=-Inf+n+k;
if ~isempty(i)
   x(i)=-log(n(i)+1)-betaln(k(i)+1,n(i)-k(i)+1);
end
return
