clc;
clf;
clear all;
close all;
p=imread('chicken.jpg');
a=imresize(p,[100,100]);
%DCT
Z(:,:,1)=dct2(a(:,:,1));
Z(:,:,2)=dct2(a(:,:,2));
Z(:,:,3)=dct2(a(:,:,3));
for i=1:100
for j=1:100
if((i+j)>60)
Z(i,j,1)=0;
Z(i,j,2)=0;
Z(i,j,3)=0;
end
end
end
K(:,:,1)=idct2(Z(:,:,1));
K(:,:,2)=idct2(Z(:,:,2));
K(:,:,3)=idct2(Z(:,:,3));
subplot(2,4,1);
%imshow(Z);
imshow(uint8(K));
title('70% compression');
Z(:,:,1)=dct2(a(:,:,1));
Z(:,:,2)=dct2(a(:,:,2));
Z(:,:,3)=dct2(a(:,:,3));
for i=1:100
for j=1:100
if((i+j)>100)
Z(i,j,1)=0;
Z(i,j,2)=0;
Z(i,j,3)=0;
end
end
end
K(:,:,1)=idct2(Z(:,:,1));
K(:,:,2)=idct2(Z(:,:,2));
K(:,:,3)=idct2(Z(:,:,3));
subplot(2,4,2);
%imshow(Z);
imshow(uint8(K));
title('50% compression');
Z(:,:,1)=dct2(a(:,:,1));
Z(:,:,2)=dct2(a(:,:,2));
Z(:,:,3)=dct2(a(:,:,3));
for i=1:100
for j=1:100
if((i+j)>140)
Z(i,j,1)=0;
Z(i,j,2)=0;
Z(i,j,3)=0;
end
end
end
K(:,:,1)=idct2(Z(:,:,1));
K(:,:,2)=idct2(Z(:,:,2));
K(:,:,3)=idct2(Z(:,:,3));
subplot(2,4,3);
%imshow(Z);
imshow(uint8(K));
title('30% compression');
Z(:,:,1)=dct2(a(:,:,1));
Z(:,:,2)=dct2(a(:,:,2));
Z(:,:,3)=dct2(a(:,:,3));
for i=1:100
for j=1:100
if((i+j)>180)
Z(i,j,1)=0;
Z(i,j,2)=0;
Z(i,j,3)=0;
end
end
end
K(:,:,1)=idct2(Z(:,:,1));
K(:,:,2)=idct2(Z(:,:,2));
K(:,:,3)=idct2(Z(:,:,3));
subplot(2,4,4);
%imshow(Z);
imshow(uint8(K));
title('10% compression');
%FFT
Z(:,:,1)=fft2(a(:,:,1));
Z(:,:,2)=fft2(a(:,:,2));
Z(:,:,3)=fft2(a(:,:,3));
for i=1:100
for j=1:100
if((i+j)>60) 
Z(i,j,1)=0; 
Z(i,j,2)=0;
Z(i,j,3)=0; 
end
end
end

