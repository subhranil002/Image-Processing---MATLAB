% Read the original image
original_image = imread('cameraman.tif'); 

% Add salt and pepper noise to the original image
corrupted_image = imnoise(original_image, 'salt & pepper', 0.05); 

% Apply 3x3 box filter to the corrupted image
box_filtered_3x3 = imfilter(corrupted_image, ones(3) / 9); 

% Apply 5x5 box filter to the corrupted image
box_filtered_5x5 = imfilter(corrupted_image, ones(5) / 25); 

% Apply median filter to the corrupted image
median_filtered = medfilt2(corrupted_image); 

% Display original image, noisy image, and filtered images
figure; 

% Plot the original image
subplot(2, 3, 1); 
imshow(original_image); 
title('Original Image'); 

% Plot the salt-and-pepper noise corrupted image
subplot(2, 3, 2); 
imshow(corrupted_image); 
title('Salt-and-Pepper Noise Corrupted'); 

% Plot the image filtered with 3x3 box filter
subplot(2, 3, 3); 
imshow(box_filtered_3x3); 
title('3x3 Box Filter'); 

% Plot the image filtered with 5x5 box filter
subplot(2, 3, 4); 
imshow(box_filtered_5x5); 
title('5x5 Box Filter'); 

% Plot the image filtered with median filter
subplot(2, 3, 5); 
imshow(median_filtered); 
title('Median Filter'); 