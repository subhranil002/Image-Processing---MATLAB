% Read the original grayscale image (as a surrogate for degraded image)
original_img = imread('cameraman.tif');
degraded_img = imfilter(original_img, fspecial('motion', 20, 45));

% Display degraded image
figure;
subplot(2, 3, 1);
imshow(degraded_img);
title('Degraded Image');

% Define point spread function (PSF) for degradation (e.g., motion blur)
PSF = fspecial('motion', 20, 45); % 20 pixels motion blur at 45 degrees

% Apply inverse filter for restoration
restored_img_inv = deconvwnr(degraded_img, PSF);

% Display restored image using inverse filtering
subplot(2, 3, 2);
imshow(restored_img_inv);
title('Restored Image (Inverse Filtering)');
