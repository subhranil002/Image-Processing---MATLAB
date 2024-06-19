% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Step 1: Gaussian smoothing
sigma = 1.4; % Standard deviation for Gaussian kernel
smoothed_img = imgaussfilt(double(gray_img), sigma);

% Display smoothed image
subplot(2, 2, 2);
imshow(uint8(smoothed_img));
title('Smoothed Image');

% Step 2: Gradient calculation
[Gmag, Gdir] = imgradient(smoothed_img, 'sobel');

% Display gradient magnitude
subplot(2, 2, 3);
imshow(Gmag, []);
title('Gradient Magnitude');

% Step 3: Non-maximum suppression
edge_img = edge(Gmag, 'Canny');

% Display Canny edge-detected image
subplot(2, 2, 4);
imshow(edge_img);
title('Canny Edge Detection');

% Adjust figure properties
colormap gray;
