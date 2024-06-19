% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Display histogram of original image
subplot(2, 2, 2);
imhist(gray_img);
title('Histogram of Original Image');

% Convert grayscale image to double for arithmetic operations
gray_img_double = double(gray_img);

% Perform contrast stretching
min_val = min(gray_img_double(:));
max_val = max(gray_img_double(:));
contrast_stretched_img = uint8((gray_img_double - min_val) / (max_val - min_val) * 255);

% Display contrast-stretched image
subplot(2, 2, 3);
imshow(contrast_stretched_img);
title('Contrast Stretched Image');

% Display histogram of contrast-stretched image
subplot(2, 2, 4);
imhist(contrast_stretched_img);
title('Histogram of Contrast Stretched Image');
