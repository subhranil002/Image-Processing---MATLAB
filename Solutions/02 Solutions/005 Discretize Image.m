% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original grayscale image
figure;
subplot(1, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Perform Fourier transformation (not used for discretization in this context)

% Discretize the image using intensity levels reduction
num_levels = 4; % Number of intensity levels
quantized_img = imquantize(gray_img, linspace(0, 255, num_levels));

% Display discretized image
subplot(1, 2, 2);
imshow(quantized_img, []);
title(sprintf('Discretized Image (%d levels)', num_levels));
colormap(gca, gray(num_levels)); % Set colormap to grayscale with specified levels
colorbar;
