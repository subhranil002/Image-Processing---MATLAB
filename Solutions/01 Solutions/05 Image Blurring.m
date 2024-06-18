% Read the input image
image = imread("cameraman.tif"); 

% Define a 3x3 averaging filter mask
mask_3x3 = (1/9) * ones(3, 3); 

% Apply the 3x3 mask to the image using convolution
blurred_image_3x3 = conv2(double(image), mask_3x3, 'same'); 

% Define a 5x5 averaging filter mask
mask_5x5 = (1/25) * ones(5, 5); 

% Apply the 5x5 mask to the image using convolution
blurred_image_5x5 = conv2(double(image), mask_5x5, 'same'); 

% Display the original and blurred images
figure; 

% Plot the original image
subplot(1, 3, 1); 
imshow(image, []); 
title('Original Image'); 

% Plot the image blurred with the 3x3 mask
subplot(1, 3, 2); 
imshow(blurred_image_3x3, []); 
title('Blurred Image (3x3 Mask)'); 

% Plot the image blurred with the 5x5 mask
subplot(1, 3, 3); 
imshow(blurred_image_5x5, []); 
title('Blurred Image (5x5 Mask)');