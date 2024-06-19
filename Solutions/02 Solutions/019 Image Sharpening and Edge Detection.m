% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 3, 1);
imshow(gray_img);
title('Original Grayscale Image');

% Sharpening using Laplacian filter
laplacian_filter = [0 -1 0; -1 4 -1; 0 -1 0];
sharpened_img = imfilter(gray_img, laplacian_filter);

% Display sharpened image
subplot(2, 3, 2);
imshow(sharpened_img);
title('Sharpened Image (Laplacian)');

% Edge detection using Sobel filter
sobel_filter_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_filter_y = sobel_filter_x';

edges_x = imfilter(double(gray_img), sobel_filter_x);
edges_y = imfilter(double(gray_img), sobel_filter_y);
edge_mag = sqrt(edges_x.^2 + edges_y.^2);

% Display edges using Sobel filter
subplot(2, 3, 3);
imshow(edge_mag, []);
title('Edges (Sobel)');

% Overlay original and sharpened images for comparison
subplot(2, 3, 4);
imshowpair(gray_img, sharpened_img, 'montage');
title('Original vs Sharpened');

% Overlay original and edges for comparison
subplot(2, 3, 5);
imshowpair(gray_img, edge_mag, 'montage');
title('Original vs Edges (Sobel)');

% Adjust figure properties
colormap gray;
