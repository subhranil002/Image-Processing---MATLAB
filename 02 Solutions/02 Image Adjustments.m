% Read the image
image = imread('cameraman.tif');

% Increase brightness (add 50 to all pixel values)
increasedBrightness = image + 50;

% Decrease brightness (subtract 50 from all pixel values)
decreasedBrightness = image - 50;

% Display original, increased brightness, and decreased brightness images
figure;
subplot(1, 3, 1);
imshow(image);
title('Original Image');

subplot(1, 3, 2);
imshow(increasedBrightness);
title('Increased Brightness');

subplot(1, 3, 3);
imshow(decreasedBrightness);
title('Decreased Brightness');

% Increase contrast (multiply all pixel values by 1.5)
increasedContrast = double(image) * 1.5;
increasedContrast = uint8(min(max(increasedContrast, 0), 255)); % Clip values to [0, 255]

% Decrease contrast (multiply all pixel values by 0.5)
decreasedContrast = double(image) * 0.5;
decreasedContrast = uint8(min(max(decreasedContrast, 0), 255)); % Clip values to [0, 255]

% Display original, increased contrast, and decreased contrast images
figure;
subplot(1, 3, 1);
imshow(image);
title('Original Image');

subplot(1, 3, 2);
imshow(increasedContrast);
title('Increased Contrast');

subplot(1, 3, 3);
imshow(decreasedContrast);
title('Decreased Contrast');

% Determine negative of the image (subtract each pixel value from 255)
negativeImage = 255 - image;

% Display original and negative images
figure;
subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(negativeImage);
title('Negative Image');