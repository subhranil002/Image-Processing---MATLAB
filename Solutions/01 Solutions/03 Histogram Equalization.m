% Read the image
image = imread('cameraman.tif');

% Perform histogram equalization
equalizedImage = histeq(image);

% Display original and equalized images
figure;
subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(equalizedImage);
title('Equalized Image');

% Display histograms of original and equalized images
figure;
subplot(1, 2, 1);
imhist(image);
title('Original Image Histogram');

subplot(1, 2, 2);
imhist(equalizedImage);
title('Equalized Image Histogram');
