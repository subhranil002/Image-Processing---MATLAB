% Read the input image
image = imread('cameraman.tif'); 

% Convert the image to double precision
image = double(image); 

% Compute the 2-D Fourier transform of the image
fft_image = fft2(image); 

% Get the size of the image
[M, N] = size(image); 

% Define cutoff frequencies for different filters
cutoff_low = 0.1;  
cutoff_high = 0.7; 
cutoff_band_low = 0.3; 
cutoff_band_high = 0.6; 

% Create filters
low_pass_filter = ones(M, N); 
low_pass_filter(round(M/2), round(N/2)) = 0; % Center of low pass filter
high_pass_filter = 1 - low_pass_filter; % High pass is inverse of low pass
band_pass_filter = zeros(M, N); 
band_pass_filter(round(M*cutoff_band_low):round(M*cutoff_band_high), 
round(N*cutoff_band_low):round(N*cutoff_band_high)) = 1; 
band_stop_filter = 1 - band_pass_filter; % Band stop is inverse of band pass

% Smooth the image using Gaussian smoothing
sigma = 2; 
image_smoothed = imgaussfilt(image, sigma); 

% Compute the 2-D Fourier transform of the smoothed image
fft_image_smoothed = fft2(image_smoothed); 

% Apply filters in frequency domain
filtered_low_pass = real(ifft2(fft_image_smoothed .* low_pass_filter)); 
filtered_high_pass = real(ifft2(fft_image_smoothed .* high_pass_filter)); 
filtered_band_pass = real(ifft2(fft_image_smoothed .* band_pass_filter)); 
filtered_band_stop = real(ifft2(fft_image_smoothed .* band_stop_filter)); 

% Display original image and filtered images
figure; 

% Plot the original image
subplot(2, 3, 1); 
imshow(uint8(image)); 
title('Original Image'); 

% Plot the low-pass filtered image
subplot(2, 3, 2); 
imshow(filtered_low_pass, []); 
title('Low-pass Filtered Image'); 

% Plot the high-pass filtered image
subplot(2, 3, 3); 
imshow(filtered_high_pass, []); 
title('High-pass Filtered Image'); 

% Plot the band-pass filtered image
subplot(2, 3, 5); 
imshow(filtered_band_pass, []); 
title('Band-pass Filtered Image'); 

% Plot the band-stop filtered image
subplot(2, 3, 6); 
imshow(filtered_band_stop, []); 
title('Band-stop Filtered Image'); 