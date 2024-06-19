% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 3, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Resize the image (downsampling)
scale_factor = 0.5;
resized_img = imresize(gray_img, scale_factor);

% Display resized image
subplot(2, 3, 2);
imshow(resized_img);
title(['Resized Image (Scale Factor = ' num2str(scale_factor) ')']);

% Rotate the image
angle = 30; % Rotation angle in degrees
rotated_img = imrotate(gray_img, angle, 'bilinear', 'crop');

% Display rotated image
subplot(2, 3, 3);
imshow(rotated_img);
title(['Rotated Image (Angle = ' num2str(angle) ' degrees)']);

% Flip the image horizontally
flipped_img = flip(gray_img, 2);

% Display flipped image
subplot(2, 3, 4);
imshow(flipped_img);
title('Horizontally Flipped Image');

% Affine transformation: Translation
tx = 50; % Translation in x-axis
ty = 30; % Translation in y-axis
tform = affine2d([1 0 0; 0 1 0; tx ty 1]);
translated_img = imwarp(gray_img, tform);

% Display translated image
subplot(2, 3, 5);
imshow(translated_img);
title(['Translated Image (tx = ' num2str(tx) ', ty = ' num2str(ty) ')']);

% Affine transformation: Shearing
shear_factor = 0.3; % Shearing factor
tform_shear = affine2d([1 shear_factor 0; 0 1 0; 0 0 1]);
sheared_img = imwarp(gray_img, tform_shear);

% Display sheared image
subplot(2, 3, 6);
imshow(sheared_img);
title(['Sheared Image (Shear Factor = ' num2str(shear_factor) ')']);
