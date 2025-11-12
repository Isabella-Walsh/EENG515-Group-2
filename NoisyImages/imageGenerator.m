% Random values between 0 and 255
matrix = rand(100, 100) * 255; 
matrix = uint8(matrix);

figure(1)
% Save the matrix as a PNG image
imwrite(matrix, 'output_image_random.png');
imshow(matrix)


% Random values between 0 and 255 with black square
matrix = rand(100, 100) * 255; 
matrix(40:60, 45:60) = 0;
matrix = uint8(matrix);

figure(2)
% Save the matrix as a PNG image
imwrite(matrix, 'output_image_random_square.png');
imshow(matrix)


% All white image with one black pixel
matrix = ones(100, 100); 
matrix(50, 50) = 0;
%matrix = uint8(matrix);

figure(3)
% Save the matrix as a PNG image
imwrite(matrix, 'output_image_one.png');
imshow(matrix)


% All white image with a line of black
matrix = ones(100, 100); 
matrix(:, 50) = 0;
%matrix = uint8(matrix);

figure(4)
% Save the matrix as a PNG image
imwrite(matrix, 'output_image_line.png');
imshow(matrix)