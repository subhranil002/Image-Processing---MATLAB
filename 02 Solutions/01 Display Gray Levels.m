% Read the image
grayImage = imread('cameraman.tif');

% Create a figure to display the images
figure;

% Display original image
subplot(2, 3, 1);
imshow(grayImage);
title('Original Image');

% Display images with reduced gray levels
grayLevels = [128, 64, 32, 16, 8];
for i = 1:length(grayLevels)
    reducedImage = round(grayImage / (256 / grayLevels(i))) * (256 / grayLevels(i));
    subplot(2, 3, i+1);
    imshow(reducedImage, []);
    title(sprintf('%d Gray Levels', grayLevels(i)));
end
