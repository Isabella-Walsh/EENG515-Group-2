
 I = imread('cameraman.tif'); 

sigma = 2;
Iblur = imgaussfilt(I, sigma); % 'sigma' is a scalar for isotropic filtering
    % Example with sigma = 2:
    % Iblur = imgaussfilt(I, 2);


% Example with anisotropic sigma:
    % Iblur_anisotropic = imgaussfilt(I, [sigma_row, sigma_col]);
    Iblur_anisotropic = imgaussfilt(I, [3, 1]);


figure;
montage({I, Iblur});
title(['Original Image (Left) Vs. Gaussian Filtered Image (Right) with \sigma = ', num2str(sigma)]);

figure;
montage({I, Iblur_anisotropic});


% Create a Gaussian filter (e.g., 5x5 with sigma = 1)
h = fspecial('gaussian', [5 5], 1);

% Apply the filter
Iblur_manual = imfilter(I, h, 'replicate');
