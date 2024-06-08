% Read the grayscale image
grayImage = imread('cameraman.tif');

% Display the original grayscale image
figure;
subplot(3, 3, 1);
imshow(grayImage);
title('Original Grayscale Image');

% Vary the threshold and observe the result
thresholds = [64, 96, 128, 160, 192]; % Different threshold values
for i = 1:length(thresholds)
    threshold = thresholds(i);
    binaryImage = grayImage > threshold;
    
    % Display binary image with varying threshold
    subplot(3, 3, i + 1);
    imshow(binaryImage);
    title(['Threshold = ' num2str(threshold)]);
end
