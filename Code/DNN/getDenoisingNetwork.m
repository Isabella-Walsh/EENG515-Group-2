function net = getDenoisingNetwork
% Copyright 2018-2021 The MathWorks, Inc.
% This function returns a pretrained denoising deep learning network

[status,errmsg] = license('checkout','image_toolbox');
if ~status
    error(errmsg);  
end

net = denoisingNetwork('dncnn');