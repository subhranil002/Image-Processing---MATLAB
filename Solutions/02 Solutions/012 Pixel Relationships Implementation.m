% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Thresholding
threshold_value = 100;
binary_img = gray_img > threshold_value;

% Display thresholded image
subplot(2, 2, 2);
imshow(binary_img);
title(['Thresholded Image (Threshold = ' num2str(threshold_value) ')']);

% Inversion
inverted_img = 255 - gray_img;

% Display inverted image
subplot(2, 2, 3);
imshow(inverted_img);
title('Inverted Grayscale Image');

% Arithmetic operation (adding a constant)
constant = 50;
added_img = gray_img + constant;

% Display image with added constant
subplot(2, 2, 4);
imshow(added_img, []);
title(['Grayscale Image + ' num2str(constant)]);

% Example of pixel relationships
x = 100; % Example pixel coordinates
y = 150;
disp(['Pixel value at (' num2str(x) ',' num2str(y) '): ' num2str(gray_img(y, x))]);
