% 3.Design a filter for the noisy image using the following
% c.Spatial domain (Median filter)

clc;
clf;
r=imread('pout.tif'); 
sum=0; 
[m, n]=size(r); 
s=double(r); 
for i=1:m 
for j=1:n 
for x=i-1:i+1 
for y=j-1:j+1 
if(((x>0) && (y>0)) && ((x<=m) && (y<=n))) 
sum=sum+s(x,y); 
end
end
end
D(i,j)=round(sum/13); 
sum=0; 
end
end
subplot(1,2,1); 
imshow(r); 
title('Original Image'); 
subplot(1,2,2); 
imshow(uint8(D)); 
title('Filtered Image'); 
