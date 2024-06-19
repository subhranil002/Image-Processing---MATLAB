% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Define intensity range for slicing
low_thresh = 100;
high_thresh = 200;

% Perform intensity slicing
sliced_img = gray_img;
sliced_img(gray_img >= low_thresh & gray_img <= high_thresh) = 255; % Highlighted region

% Display sliced image
subplot(2, 2, 2);
imshow(sliced_img);
title('Intensity Sliced Image');

% Overlay original and sliced images for comparison
subplot(2, 2, 3);
imshowpair(gray_img, sliced_img, 'montage');
title('Original vs Intensity Sliced');

% Adjust figure properties
colormap gray;
