% Read the color image
color_img = imread('peppers.png');

% Display original color image
figure;
subplot(1, 2, 1);
imshow(color_img);
title('Original Color Image');

% Extract individual color channels
red_channel = color_img(:,:,1);
green_channel = color_img(:,:,2);
blue_channel = color_img(:,:,3);

% Example: Enhance the red channel (adjust contrast)
enhanced_red = imadjust(red_channel, [0.2 0.8], []);

% Recombine the color channels
enhanced_color_img = cat(3, enhanced_red, green_channel, blue_channel);

% Display enhanced color image
subplot(1, 2, 2);
imshow(enhanced_color_img);
title('Enhanced Color Image');

% Write the enhanced color image to a new file
imwrite(enhanced_color_img, 'enhanced_peppers.png');

% Display a message indicating the image has been saved
disp('Enhanced color image has been written to enhanced_peppers.png');
