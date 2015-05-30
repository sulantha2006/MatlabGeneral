classdef FDRObject
    %FDR Corrected Object with corrected p, t, and e values. 
    
    properties
        
        uncorrected_pValues
        uncorrected_tValues
        uncorrected_eValues
        
        corrected_pValues
        corrected_tValues
        corrected_eValues
    end
    
    methods
        function FO = FDRObject(uncorrected_pValues, uncorrected_tValues, uncorrected_eValues, corrected_pValues, corrected_tValues, corrected_eValues)
            FO.uncorrected_pValues = uncorrected_pValues;
            FO.uncorrected_tValues = uncorrected_tValues;
            FO.uncorrected_eValues = uncorrected_eValues;
        
            FO.corrected_pValues = corrected_pValues;
            FO.corrected_tValues = corrected_tValues;
            FO.corrected_eValues = corrected_eValues;
        end
    end
    
end

