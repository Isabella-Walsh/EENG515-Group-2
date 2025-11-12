% Load noisy image
noisyI = imread('output_image_random.png');
noisyI = im2gray(noisyI);


% Get pretrained denoising network
disp("Loading pretrained DnCNN denoising network...");
net = getDenoisingNetwork;  % <- Runs in MATLAB only, not inside codegen
disp("Network loaded successfully.");

% Denoise (DnCNN predicts residual noise)
noisyI_single = im2single(noisyI);
residual = predict(net, noisyI_single);
denoisedI = noisyI_single - residual;
denoisedI = max(min(denoisedI,1),0);

% View denoised image
figure(1); clf;
imshowpair(noisyI, denoisedI, 'montage');
title('Noisy Image, Denoised Image');

figure(2); clf;
imshowpair(noisyI, denoisedI, 'diff');

%figure(3); clf;
%imagesc(noisyI)

%figure(4); clf;
%imagesc(denoisedI)