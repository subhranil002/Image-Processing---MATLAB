% Read the grayscale image
gray_img = imread('cameraman.tif');

% Apply different edge detection operators
edge_sobel = edge(gray_img, 'sobel');
edge_prewitt = edge(gray_img, 'prewitt');
edge_roberts = edge(gray_img, 'roberts');
edge_canny = edge(gray_img, 'canny');

% Display original image and edge-detected images
figure;

subplot(2, 3, 1);
imshow(gray_img);
title('Original Grayscale Image');

subplot(2, 3, 2);
imshow(edge_sobel);
title('Edge Detected (Sobel)');

subplot(2, 3, 3);
imshow(edge_prewitt);
title('Edge Detected (Prewitt)');

subplot(2, 3, 4);
imshow(edge_roberts);
title('Edge Detected (Roberts)');

subplot(2, 3, 5);
imshow(edge_canny);
title('Edge Detected (Canny)');
