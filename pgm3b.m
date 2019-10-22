% 3.Design a filter for the noisy image using the following
% b.Spatial domain (Averaging filter)

clc;
clf;
I=imread('pout.tif'); 
a=imnoise(I,'salt & pepper',0.02); 
[m, n]=size(a); 
filtered=zeros(m+2,n+2); 
for i=1:m 
for j=1:n 
a1(i+1,j+1)=a(i,j); 
end
end
med=0; 
[m, n]=size(a1); 
for i=2:m-1 
for j=2:n-1 
l=1; 
ar=zeros(1,9); 
for x=i-1:i+1 
for y=j-1:j+1 
ar(l)=a1(x,y); 
l=l+1; 
end
end
ar=sort(ar); 
med=median(ar); 
filtered(i,j)=med; 
end
end
subplot(1,3,1);
imshow(I);
title('Original Image')
subplot(1,3,2); 
imshow(a); 
title('Noisy image');
subplot(1,3,3); 
imshow(uint8(filtered));
title('Filtered out image (Averaging filter)');
