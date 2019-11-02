% 6.Implement the following image processing operations
% a.Thresholding

clc;
clf;
b=imread('eight.tif');
a=double(b);
sum=0;
[m,n]=size(a);
for i=1 :m
for j=1 :n
sum=sum+a(i,j);
end
end
ind=m*n;
T=round(sum/ind);
while 1
 g1=zeros(ind,1);
 g2=zeros(ind,1);
 k1=1;
 k2=1;
for i=1 :m
for j=1 :n
if( T>a(i,j))
g1(k1)=a(i,j);
            k1=k1+1;
else
g2(k2)=a(i,j);
            k2=k2+1;
end
end
end
 g1sum=0;
 g2sum=0;
for i=1:k1-1
    g1sum=g1sum+g1(i,1);
end
for i=1:k2-1
    g2sum=g2sum+g2(i,1);
end
 mu1=g1sum/(k1-1);
 mu2=g2sum/(k2-1);
 mu1
 mu2
 g1sum
 g2sum
k1-1
k2-1
 T1=round((mu1+mu2)/2);
difT=abs(T-T1);
if(difT>=1)
     T=T1;
continue;
else
break;
end
end
    T1
    T
subplot(1,3,1);
imshow(b),title('Image');
subplot(1,3,2);
imhist(b),title('Histogram');
bw=roicolor(a,T,255);
subplot(1,3,3);
imshow(bw),title('Threshold Image');
