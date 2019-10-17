% 3.Design a filter for the noisy image using the following
% a.Frequency domain(Gaussian filter)

clc; 
clf;
a=imread('flamingos.jpg'); 
h=fspecial('gaussian');  % h = fspecial('gaussian',hsize,sigma) returns a rotationally symmetric Gaussian lowpass filter of size hsize with standard deviation sigma
plotting(a,h);

function plotting(a,h)
subplot(2,1,1); 
imshow(a); 
title('Original Image'); 
B=imfilter(a,h);  % B = imfilter(A,h) filters the multidimensional array A with the multidimensional filter h and returns the result in B.
subplot(2,1,2); 
imshow(uint8(B)); 
title('Frequency Domain/Gaussian Filter'); 
end
