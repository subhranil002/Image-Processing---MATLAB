% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
imshow(gray_img);
title('Original Grayscale Image');

% Compute mean and standard deviation
mean_val = mean2(gray_img);
std_dev = std2(double(gray_img)); % Convert to double for accurate computation

% Compute correlation coefficient
correlation_coeff = corr2(double(gray_img), double(gray_img));

% Display computed statistics
text_str = {sprintf('Mean: %.2f', mean_val), ...
            sprintf('Standard Deviation: %.2f', std_dev), ...
            sprintf('Correlation Coefficient: %.2f', correlation_coeff)};

annotation('textbox', [0.6, 0.5, 0.3, 0.3], 'String', text_str, 'FitBoxToText', 'on', 'BackgroundColor', 'white');

% Adjust figure properties
set(gca, 'Visible', 'off');
