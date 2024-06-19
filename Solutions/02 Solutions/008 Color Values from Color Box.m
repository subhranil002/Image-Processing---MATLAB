% Read the color image
color_img = imread('color_box.png');

% Display the color image
figure;
imshow(color_img);
title('Select a color from the image');

% Prompt user to click on the image to select a color
disp('Click on the image to select a color.');

% Wait for user to click on the image
[x, y] = ginput(1); % Get coordinates of the clicked point

% Convert coordinates to integers
x = round(x);
y = round(y);

% Get RGB values at the clicked point
selected_color_rgb = color_img(y, x, :);

% Display RGB values
disp(['Selected RGB values: ', num2str(selected_color_rgb)]);

% Convert RGB to HSV
selected_color_hsv = rgb2hsv(selected_color_rgb);

% Display HSV values
disp(['Selected HSV values: ', num2str(selected_color_hsv)]);

% Show selected color in a new figure
selected_color_img = zeros(100, 100, 3, 'uint8'); % Create a small image for visualization
selected_color_img(:,:,1) = selected_color_rgb(1); % Red channel
selected_color_img(:,:,2) = selected_color_rgb(2); % Green channel
selected_color_img(:,:,3) = selected_color_rgb(3); % Blue channel

figure;
imshow(selected_color_img);
title('Selected Color');
