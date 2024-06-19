% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original grayscale image
figure;
subplot(1, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Perform Fourier transformation
fft_img = fft2(double(gray_img));

% Shift zero frequency component to center
fft_img_shifted = fftshift(fft_img);

% Define Gaussian low-pass filter in the frequency domain
[M, N] = size(gray_img);
sigma = 20; % Adjust sigma for filter strength
[X, Y] = meshgrid(1:N, 1:M);
centerX = ceil(N/2);
centerY = ceil(M/2);
gaussian_filter = exp(-((X - centerX).^2 + (Y - centerY).^2) / (2 * sigma^2));

% Apply the filter in the frequency domain
fft_img_filtered = fft_img_shifted .* gaussian_filter;

% Shift frequency spectrum back
fft_img_filtered_shifted = ifftshift(fft_img_filtered);

% Perform inverse Fourier transformation
img_filtered = real(ifft2(fft_img_filtered_shifted));

% Convert to uint8 for display
img_filtered = uint8(img_filtered);

% Display filtered image
subplot(1, 2, 2);
imshow(img_filtered);
title('Image with High Frequencies Eliminated');
