function I = denoisenet_predict(in)
%#codegen
% Copyright 2018-2024 The MathWorks, Inc.

persistent dlnet;


if isempty(dlnet)   
    dlnet = coder.loadDeepLearningNetwork('getDenoisingNetwork', 'DnCNN');
end

% Use the network to predict the noise in the input image
dlIn = dlarray(in, 'SSC');
res = extractdata(predict(dlnet, dlIn));


% Once the noise is estimated, we subtract the noise from the original
% image to obtain a denoised image.

I = in - res;
  