function [objectmap, header] = decodeOBJ(file)
% decodeOBJ: Reads Analyze 6.0 ROI Object Map format (*.OBJ)
% Public release version 2
% 
% I spent about an hour examining Object Maps in a hex editor until I came
% up with a way to parse them.  Warning, if you're not using Analyze 6.0 on 
% Windows and Matlab R14 SP1 then I have no clue if this will work.
% 
% Usage: [objectmap,header] = decodeOBJ(file);
% 
% Example: 
% [objectmap,header] = decodeOBJ('C:\foo\bar.obj');

% (C) Copyright Jan 11, 2006, David Johnson <monorail at po.cwru.edu>
% 
% (C) Copyright Apr 20, 2007, David Johnson <monorail at po.cwru.edu>
% 
% Rights to "rude: a pedestrian run-length decoder-encoder" remain the
% property of their respective owner(s).
% 
% Please don't sue me for writing this simple file utility, which does not
% hurt sales of Analyze!  I have not used the Analyze developers kit in any way.
% 
% Changelog: version 2 can decode additional header fields.  These are 
% useful if you plan to also use encodeOBJ.m.
% 

% I use Analyze to manually trace ROIs in my data and then I load the
% Object Maps and do statistical tests on them in matlab.  

% http://www.mayo.edu/bir/Software/Analyze/AnalyzeTechInfo.html

fid=fopen(file);
fseek(fid,0,'bof');

% the header is 20 bytes
fileheader=fread(fid,5,'uint32=>uint32','ieee-be');

% ignore=fileheader(1);  % can't figure out what this means, probably
% version related stuff

% dimensions indicated as displayed in Analyze 6.0 ROI
axis1dim=fileheader(2);    % x
axis2dim=fileheader(3);    % z
axis3dim=fileheader(4);  % y
numObjects=fileheader(5);  

header.xdim = axis1dim;
header.ydim = axis3dim;
header.zdim = axis2dim;

% each ROI Object takes up 152 bytes.  
% FIXME: read in more than just object names

header.NumObjects = numObjects;
header.ObjectNames = [];
header.ObjectOnOff = [];
header.ObjectShadings = [];
header.ObjectColorsRed = [];
header.ObjectColorsGreen = [];
header.ObjectColorsBlue = [];
for i=1:numObjects
    objectName=fread(fid,32,'uchar');
% The name of the object is a null-terminated string starting at the
% beginning of the object struct.
    allNulls = find(objectName==0);
    firstNull = allNulls(1);
    header.ObjectNames = [header.ObjectNames, {char(objectName(1:firstNull-1)).'}];
    
    % this contains some additional cryptic fields
    objectstructs=fread(fid,120,'uchar');
    header.ObjectOnOff = [header.ObjectOnOff, objectstructs(4)];  % is this object displayed (1) or not (0)?
    header.ObjectShadings    = [header.ObjectShadings, objectstructs(12)];  % not sure what "shadings" are, see Analyze ROI editor.  Maybe opacity?  0-255
    header.ObjectColorsRed   = [header.ObjectColorsRed, objectstructs(28)];  % color used to display an outline on this object in the Analyze ROI editor
    header.ObjectColorsGreen = [header.ObjectColorsRed, objectstructs(32)];  % ibid
    header.ObjectColorsBlue  = [header.ObjectColorsBlue, objectstructs(36)];  % ibid
    % other offsets and fields
    % 104 : (width-1) of object size, seems redundant
    % 106 : (height-1) of object size
    % 108 : (depth-1) of object size
    % 109-115 : means "0.5"?? must be some floating point number
    % 116 : always 1,  not sure why
end
header.ObjectNumbers = 0:(numObjects-1);

% skip past all the ROI objects and read the data
fseek(fid,20+double(numObjects)*152,'bof');
A = fread(fid,inf,'uchar');  % this is RLE
fclose(fid);

% decode RLE data
lengths=A(1:2:length(A)).';
bytes=A(2:2:length(A)).';

% decode the simple RLE data
dta=rl_decode(lengths,bytes);

% this is how it's actually stored: XZY
B=reshape(dta,[axis1dim,axis2dim,axis3dim]);

% I prefer my data to be in YXZ (matlab convention)
data=permute(B,[3,1,2]);

% The axes in Analyze are screwy.  [0,0,0] is the lower left hand corner in
% the first slice.  therefore the y axis needs flipped.
objectmap = flipdim(data,1);

% debugging code
% imagesc(squeeze(objectmap(:,:,20)))
% keyboard

return;


% I took this function below from code from "rude: a pedestrian run-length
% decoder-encoder" on matlab central
% http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=6436&objectType=FILE

% run-length decoder
function	vec=rl_decode(len,val)

lx=len>0 & ~(len==inf);
if	~any(lx)
    vec=[];
    return;
end
if	numel(len) ~= numel(val)
    error(...
        sprintf(['rl-decoder: length mismatch\n',...
        'len = %-1d\n',...
        'val = %-1d'],...
        numel(len),numel(val)));
end
len=len(lx);
val=val(lx);
val=val(:).';
len=len(:);
lc=cumsum(len);
lx=zeros(1,lc(end));
lx([1;lc(1:end-1)+1])=1;
lc=cumsum(lx);
vec=val(lc);
return;
