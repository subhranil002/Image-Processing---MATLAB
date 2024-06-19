% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display the grayscale image
figure;
imshow(gray_img);
title('Grayscale Image');

% Calculate and display the histogram of the grayscale image
figure;
imhist(gray_img);
title('Histogram of Grayscale Image');

% Read the color image
color_img = imread('peppers.png');

% Display the color image
figure;
imshow(color_img);
title('Color Image');

% Separate the color channels
red_channel = color_img(:,:,1);
green_channel = color_img(:,:,2);
blue_channel = color_img(:,:,3);

% Calculate and display the histogram for each color channel
figure;

subplot(3,1,1);
imhist(red_channel);
title('Histogram of Red Channel');

subplot(3,1,2);
imhist(green_channel);
title('Histogram of Green Channel');

subplot(3,1,3);
imhist(blue_channel);
title('Histogram of Blue Channel');
