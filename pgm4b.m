% 4.Implement the following image processing operations.
% b.Histogram equalization

clc;
clf;
GIm=imread('pout.tif');
numofpixels=size(GIm,1)*size(GIm,2);
HIm=uint8(zeros(size(GIm,1),size(GIm,2)));
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
for i=1:size(GIm,1)
for j=1:size(GIm,2)
value=GIm(i,j);
freq(value+1)=freq(value+1)+1;
probf(value+1)=freq(value+1)/numofpixels;
end
end
sum=0;
no_bins=255;
for i=1:size(probf)
sum=sum+freq(i);
cum(i)=sum;
probc(i)=cum(i)/numofpixels;
output(i)=round(probc(i)*no_bins);
end
for i=1:size(GIm,1)
for j=1:size(GIm,2)
HIm(i,j)=output(GIm(i,j)+1);
end
end
subplot(2,2,2); imshow(HIm); title('Histogram Equalization');
subplot(2,2,4); imhist(HIm);
subplot(2,2,1); imshow(GIm); title('Original Image'); 
subplot(2,2,3); imhist(GIm);
