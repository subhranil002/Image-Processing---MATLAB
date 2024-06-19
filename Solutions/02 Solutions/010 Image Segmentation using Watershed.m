% Read the color image
color_img = imread('peppers.png');

% Convert to grayscale
gray_img = rgb2gray(color_img);

% Thresholding to create markers
level = graythresh(gray_img);
markers = imbinarize(gray_img, level);

% Perform distance transform
D = -bwdist(~markers);

% Compute watershed transform
labels = watershed(D);

% Overlay segmented regions on original image
segmented_img = color_img;
segmented_img(labels == 0) = 0; % Set boundaries to black

% Display results
figure;

subplot(1, 2, 1);
imshow(color_img);
title('Original Image');

subplot(1, 2, 2);
imshow(segmented_img);
title('Segmented Image using Watershed');
