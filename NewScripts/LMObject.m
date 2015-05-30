classdef LMObject
    %LMObject resulting from multi valued Data Linear Modeling
    
    properties
        Coefficients
        SSR
        LogLikelihood
        Fitted
        Residuals
        
    end
    
    methods
        function LMO = LMObject(Coefficients, SSR, LogLikelihood, Fitted, Residuals)
            LMO.Coefficients = Coefficients;
            LMO.SSR = SSR;
            LMO.LogLikelihood = LogLikelihood;
            LMO.Fitted = Fitted;
            LMO.Residuals = Residuals;
        end
    end
    
end

