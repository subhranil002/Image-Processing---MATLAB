% Read the grayscale image
gray_img = imread('cameraman.tif');

% Display original image
figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Grayscale Image');

% 1-D FFT along rows
fft1d_row = fftshift(abs(fft(gray_img)));

% Display 1-D FFT along rows
subplot(2, 2, 2);
plot(fft1d_row(round(end/2), :));
title('1-D FFT along Rows');
xlabel('Frequency');
ylabel('Magnitude');

% 1-D FFT along columns
fft1d_col = fftshift(abs(fft(gray_img')));

% Display 1-D FFT along columns
subplot(2, 2, 3);
plot(fft1d_col(:, round(end/2)));
title('1-D FFT along Columns');
xlabel('Frequency');
ylabel('Magnitude');

% 2-D FFT
fft2d_img = fft2(double(gray_img));

% Shift zero frequency component to center
fft2d_img = fftshift(fft2d_img);

% Calculate magnitude spectrum (log scale for better visualization)
fft2d_mag = abs(fft2d_img);
fft2d_mag_log = log(1 + fft2d_mag);

% Display 2-D FFT magnitude spectrum
subplot(2, 2, 4);
imshow(fft2d_mag_log, []);
title('2-D FFT Magnitude Spectrum');
colorbar;
