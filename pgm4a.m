% 4.Implement the following image processing operations.
% a.Contrast stretching

clc;
clf;
I=imread('C:\mat\sunrise.jpg');
I2 = im2double(I);
prompt = 'Input Stretching value in the range of 1-10:';
x = input(prompt);
str=sprintf('C=%d', x);
IC = x * log(1 + I2);
subplot(1,2,1);imshow(I);title('Original Image');
subplot(1,2,2);imshow(IC);title(str);
