% Read the original image
original_image = imread('cameraman.tif'); 

% Add salt and pepper noise to the original image
salt_and_pepper_noise = imnoise(original_image, 'salt & pepper', 0.05); 

% Add Gaussian noise to the original image
gaussian_noise = imnoise(original_image, 'gaussian', 0, 0.01); 

% Apply 3x3 filtering to salt and pepper noise corrupted image
salt_and_pepper_filtered_3x3 = imfilter(double(salt_and_pepper_noise), ones(3) / 9); 

% Apply 5x5 filtering to salt and pepper noise corrupted image
salt_and_pepper_filtered_5x5 = imfilter(double(salt_and_pepper_noise), ones(5) / 25); 

% Apply 3x3 filtering to Gaussian noise corrupted image
gaussian_filtered_3x3 = imfilter(double(gaussian_noise), ones(3) / 9); 

% Apply 5x5 filtering to Gaussian noise corrupted image
gaussian_filtered_5x5 = imfilter(double(gaussian_noise), ones(5) / 25); 

% Display original image, noisy images, and filtered images
figure; 

% Plot the original image
subplot(3, 3, 1); 
imshow(original_image); 
title('Original Image'); 

% Plot the salt and pepper noise corrupted image
subplot(3, 3, 2); 
imshow(salt_and_pepper_noise); 
title('Salt & Pepper Noise Corrupted'); 

% Plot the Gaussian noise corrupted image
subplot(3, 3, 3); 
imshow(gaussian_noise); 
title('Gaussian Noise Corrupted'); 

% Plot the salt and pepper noise filtered with 3x3 mask
subplot(3, 3, 4); 
imshow(uint8(salt_and_pepper_filtered_3x3)); 
title('Salt & Pepper Noise Filtered (3x3)'); 

% Plot the salt and pepper noise filtered with 5x5 mask
subplot(3, 3, 5); 
imshow(uint8(salt_and_pepper_filtered_5x5)); 
title('Salt & Pepper Noise Filtered (5x5)'); 

% Plot the Gaussian noise filtered with 3x3 mask
subplot(3, 3, 7); 
imshow(uint8(gaussian_filtered_3x3)); 
title('Gaussian Noise Filtered (3x3)'); 

% Plot the Gaussian noise filtered with 5x5 mask
subplot(3, 3, 8); 
imshow(uint8(gaussian_filtered_5x5)); 
title('Gaussian Noise Filtered (5x5)'); 