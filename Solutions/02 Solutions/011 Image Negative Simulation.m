% Read the grayscale image
gray_img = imread('cameraman.tif');

% Read the binary image (using peppers.png as an example)
binary_img = imread('circles.png');

% Calculate negative of grayscale image
gray_negative = 255 - gray_img;

% Calculate negative of binary image
binary_negative = 1 - binary_img;

% Display original and negative images

% Grayscale images
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

subplot(2, 2, 2);
imshow(gray_negative);
title('Negative Grayscale Image');

% Binary images
subplot(2, 2, 3);
imshow(binary_img);
title('Original Binary Image');

subplot(2, 2, 4);
imshow(binary_negative);
title('Negative Binary Image');
