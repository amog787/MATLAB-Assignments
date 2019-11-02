% 6.Implement the following image processing operations
% b.Edge detection

clc;
clf;
img= imread('.\chicken.jpg');
imshow(img);
a=rgb2gray(img);
 [m, n]=size(a);
maskx=zeros(m,n);
masky=zeros(m,n);
 a1=zeros(m+2,n+2);
for i=1:m
for j=1:n
a1(i+1,j+1)=a(i,j);
end
end
Mx=[-1 0 1;-2 0 2;-1 0 1];
 My=[-1 -2 -1;0 0 0;1 2 1];
 [m,n]=size(a1);
for i=2:m-1
for j=2:n-1
fx=0;
fy=0;
         k=1;
         l=1;
for x=i-1:i+1
for y=j-1:j+1
fx=fx+(a1(x,y)*Mx(k,l));
fy=fy+(a1(x,y)*My(k,l));
                l=l+1;
end
              k=k+1;
              l=1;
end
maskx(i-1,j-1)=fx;
masky(i-1,j-1)=fy;
end
end
mxy=abs(maskx)+abs(masky); 
subplot(1,2,1);
imshow(a);
title('Original Image')
subplot(1,2,2);
imshow(uint8(mxy));
title('Edge Detected')
