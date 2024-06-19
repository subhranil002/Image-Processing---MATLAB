% Read the grayscale image
gray_img = imread('cameraman.tif');

% Determine the bit depth of the image
bit_depth = 8; % Assuming 8-bit image (0-255)

% Display each bit plane
figure('Position', [100, 100, 1200, 600]);

for bit = 1:bit_depth
    % Create a mask for the current bit plane
    bit_plane = bitget(gray_img, bit); % bitget extracts the bit plane
    
    % Calculate the position in subplot grid
    subplot(2, 4, bit); % 2 rows, 4 columns (for 8-bit image)
    
    % Display the current bit plane
    imshow(bit_plane, []);
    title(['Bit Plane ' num2str(bit)]);
end
