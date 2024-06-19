% Read the grayscale image
gray_img = imread('cameraman.tif');
original_size = numel(gray_img);

% Display original image
figure;
subplot(2, 3, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Apply DCT to image
dct_img = dct2(double(gray_img));

% Thresholding (optional for compression)
threshold = 0.1; % Adjust threshold for better compression ratio
dct_img(abs(dct_img) < threshold * max(abs(dct_img(:)))) = 0;

% Apply inverse DCT to compressed image
compressed_img = idct2(dct_img);

% Display compressed image after DCT
subplot(2, 3, 2);
imshow(uint8(compressed_img));
title(sprintf('Compressed Image (DCT)\nCompression Ratio: %.2f', original_size / numel(dct_img)));

% Calculate compression ratio
compression_ratio_dct = original_size / numel(dct_img);
