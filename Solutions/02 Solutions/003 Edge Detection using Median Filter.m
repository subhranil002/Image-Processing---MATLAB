% Read the color image
color_img = imread('peppers.png');

% Convert the image to grayscale
gray_img = rgb2gray(color_img);

% Add noise to the grayscale image (optional)
noisy_img = imnoise(gray_img, 'salt & pepper', 0.05);

% Apply median filtering to reduce noise
median_filtered_img = medfilt2(noisy_img);

% Perform edge detection using the Sobel operator
edge_img = edge(median_filtered_img, 'sobel');

% Display original image, noisy image, median filtered image, and edge-detected image
figure;

subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

subplot(2, 2, 2);
imshow(noisy_img);
title('Noisy Grayscale Image');

subplot(2, 2, 3);
imshow(median_filtered_img);
title('Median Filtered Image');

subplot(2, 2, 4);
imshow(edge_img);
title('Edge Detected Image (Sobel)');

