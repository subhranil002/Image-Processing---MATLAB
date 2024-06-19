% Read the grayscale image
img = imread('cameraman.tif');

% Display the image
figure;
imshow(img);
title('Original Grayscale Image');

% Write the image to a new file
imwrite(img, 'cameraman_copy.tif');
