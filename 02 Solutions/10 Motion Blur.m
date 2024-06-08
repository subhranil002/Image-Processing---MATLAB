% Read the input image
image = imread('cameraman.tif'); 

% Convert the image to double precision
image = double(image); 

% Define motion blur parameters
motion_length = 20; 
motion_angle = 45; 

% Create a motion blur filter
motion_blur_filter = fspecial('motion', motion_length, motion_angle); 

% Apply motion blur filter to the original image
blurred_image = imfilter(image, motion_blur_filter, 'conv', 'circular'); 

% Display original image and motion-blurred image
figure; 

% Plot the original image
subplot(1, 2, 1); 
imshow(uint8(image)); 
title('Original Image'); 

% Plot the motion-blurred image
subplot(1, 2, 2); 
imshow(uint8(blurred_image)); 
title('Motion Blurred Image');