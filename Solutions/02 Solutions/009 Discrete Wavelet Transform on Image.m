% Read the image from MATLAB library
img = imread('cameraman.tif');

% Convert to grayscale if it is not already
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Define Haar wavelet filters
Lo_D = [1 1]/sqrt(2); % Low-pass filter for decomposition
Hi_D = [-1 1]/sqrt(2); % High-pass filter for decomposition

% Perform single level 2D DWT manually
% Low-pass filtering and downsampling (approximation coefficients)
approximation = conv2(img, Lo_D', 'same'); % Row-wise filtering
approximation = conv2(approximation, Lo_D, 'same'); % Column-wise filtering
approximation = approximation(1:2:end, 1:2:end); % Downsampling

% High-pass filtering and downsampling for details
horizontal = conv2(img, Hi_D', 'same');
horizontal = conv2(horizontal, Lo_D, 'same');
horizontal = horizontal(1:2:end, 1:2:end);

vertical = conv2(img, Lo_D', 'same');
vertical = conv2(vertical, Hi_D, 'same');
vertical = vertical(1:2:end, 1:2:end);

diagonal = conv2(img, Hi_D', 'same');
diagonal = conv2(diagonal, Hi_D, 'same');
diagonal = diagonal(1:2:end, 1:2:end);

% Visualize the results
figure;
subplot(2,2,1);
imshow(img, []);
title('Original Image');

subplot(2,2,2);
imshow(approximation, []);
title('Approximation Coefficients');

subplot(2,2,3);
imshow(horizontal, []);
title('Horizontal Detail Coefficients');

subplot(2,2,4);
imshow(vertical, []);
title('Vertical Detail Coefficients');

figure;
imshow(diagonal, []);
title('Diagonal Detail Coefficients');
