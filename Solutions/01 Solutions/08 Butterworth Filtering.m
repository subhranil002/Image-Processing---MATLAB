% Read the input image
image = imread('cameraman.tif'); 

% Convert the image to double precision
image = double(image); 

% Define cutoff frequencies and filter order
cutoff_low1 = 0.1;  
cutoff_low2 = 0.3; 
cutoff_high1 = 0.5; 
cutoff_high2 = 0.7; 
n = 2; % Filter order 

% Design Butterworth low-pass filters
[b_low1, a_low1] = butter(n, cutoff_low1, 'low'); 
[b_low2, a_low2] = butter(n, cutoff_low2, 'low'); 

% Design Butterworth high-pass filters
[b_high1, a_high1] = butter(n, cutoff_high1, 'high'); 
[b_high2, a_high2] = butter(n, cutoff_high2, 'high'); 

% Apply filtering
filtered_low1 = filter2(b_low1, a_low1, image); 
filtered_low2 = filter2(b_low2, a_low2, image); 
filtered_high1 = filter2(b_high1, a_high1, image); 
filtered_high2 = filter2(b_high2, a_high2, image); 

% Normalize filtered images to [0, 1]
filtered_low1 = mat2gray(filtered_low1); 
filtered_low2 = mat2gray(filtered_low2); 
filtered_high1 = mat2gray(filtered_high1); 
filtered_high2 = mat2gray(filtered_high2); 

% Display original image and filtered images
figure; 

% Plot the original image
subplot(3, 3, 1); 
imshow(uint8(image)); 
title('Original Image'); 

% Plot the low-pass filtered images
subplot(3, 3, 2); 
imshow(filtered_low1); 
title('Low-pass (cutoff = 0.1)'); 
subplot(3, 3, 3); 
imshow(filtered_low2); 
title('Low-pass (cutoff = 0.3)'); 

% Plot the high-pass filtered images
subplot(3, 3, 5); 
imshow(filtered_high1); 
title('High-pass (cutoff = 0.5)'); 
subplot(3, 3, 6); 
imshow(filtered_high2); 
title('High-pass (cutoff = 0.7)'); 