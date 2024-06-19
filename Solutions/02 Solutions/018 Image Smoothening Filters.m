% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Mean filtering
mean_filtered_img = imfilter(gray_img, fspecial('average', [3 3]));

% Display mean filtered image
subplot(2, 2, 2);
imshow(mean_filtered_img);
title('Mean Filtered Image');

% Median filtering
median_filtered_img = medfilt2(gray_img, [3 3]);

% Display median filtered image
subplot(2, 2, 3);
imshow(median_filtered_img);
title('Median Filtered Image');

% Overlay original and filtered images for comparison
subplot(2, 2, 4);
imshowpair(gray_img, mean_filtered_img, 'montage');
title('Original vs Mean Filtered');

% Adjust figure properties
colormap gray;
