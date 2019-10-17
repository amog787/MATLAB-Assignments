% 1.Design a discrete cosine transform (DCT) for
% a.2-d signal (using DCT expression)

clc;
clf;
im1=imread('rice.png');
[a, b]=size(im1);
ID=double(im1);
N;
check(a,b);

for x=0:N-1
for y=0:N-1
if(x==0)
b(x+1,y+1)=sqrt(1/N);
else
b(x+1,y+1)=sqrt(2/N)*cos(((2*y+1)*pi*x)/(2*N));
end
end
end
dct2=b*ID*(b');

b_op(im1,dct2);

function check(r,c)
if(r==c)
    N=c;
else
error('Use a different image');
end
end

function b_op(im1,dct2)
subplot(2,1,1);
imshow(im1);
title('Original image');
subplot(2,1,2);
imshow(uint8(dct2));
title('DCT of image');
end
