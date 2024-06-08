function statisticalFeatureExtraction           =   statatisticalFeatures(varargin)
    % This function computes statistical features from SVD.
    % Input: SVD matrix
    % Output: Statistical features (mean, variance, mode, median,, kurtosis skewness)
    singularValueDecomposition                  =   varargin{1};

    meanSVD                                     =   mean(singularValueDecomposition, 2);
    varianceSVD                                 =   var(singularValueDecomposition, [], 2);
    modeSVD                                     =   mode(singularValueDecomposition, 2);
    medianSVD                                   =   median(singularValueDecomposition, 2);
    kurtosisSVD                                 =   kurtosis(singularValueDecomposition, 0, 2);
    skewnessSVD                                 =   skewness(singularValueDecomposition, 0, 2);
    statisticalFeatureExtraction(1)             =   meanSVD(1);
    statisticalFeatureExtraction(2)             =   meanSVD(3);
    statisticalFeatureExtraction(3)             =   varianceSVD(1);
    statisticalFeatureExtraction(4)             =   varianceSVD(3);
    statisticalFeatureExtraction(5)             =   modeSVD(1);
    statisticalFeatureExtraction(6)             =   modeSVD(3);
    statisticalFeatureExtraction(7)             =   medianSVD(1);
    statisticalFeatureExtraction(8)             =   medianSVD(3);
    statisticalFeatureExtraction(9)             =   kurtosisSVD(1);
    statisticalFeatureExtraction(10)            =   kurtosisSVD(3);
    statisticalFeatureExtraction(11)            =   skewnessSVD(1);
    statisticalFeatureExtraction(12)            =   skewnessSVD(3);
end