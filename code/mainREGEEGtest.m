%   This is an example code to test the REGEEG methodology.
%   Feel free to use only for academic and research proposes. If you publish
%   any results obtained using this code, please cite the original paper.

clc;
close all;
clear;

experimentsNumber               =   10;
samplesNumber                   =   1000;
regressionDegree                =   12;
statisticalFeaturesNumber       =   12;
samplingFactors                 =   factor(samplesNumber);
windowsNumbers                  =   samplingFactors(end);                   %   Or any windows you like
windowLenght                    =   prod(samplingFactors(1:end-1));               %   Or any lenght you like
dataInput                       =   rand(experimentsNumber, samplesNumber); %   Or any input data you like

%   assign memory array
regeegFeatures                  =   zeros(floor(experimentsNumber/2)*windowsNumbers, statisticalFeaturesNumber + 3*(regressionDegree+1));

for i   =   1:floor(experimentsNumber/2)
    pairInputData               =   dataInput((i-1)*2+1:(i-1)*2+2, :);
    for j   =   1:windowsNumbers
        windowData              =   pairInputData(:, (j-1)*windowLenght+1:j*windowLenght);
        %   Your REGEEG code here
        [singularValueDecomposition, spectralEnergyCoefficients]    =   regressionProcessing(...
                                                                            windowData, ...
                                                                            regressionDegree);
        extractedFeatures       =   statisticalFeatures(singularValueDecomposition);
        regeegFeatures((i-1)*windowsNumbers+j, :)    =   [extractedFeatures, spectralEnergyCoefficients];                                                                    
    end
end


