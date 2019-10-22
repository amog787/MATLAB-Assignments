% 1.Design a discrete cosine transform (DCT) for
% a.2-d signal (using DCT expression)

clc;
clf;
im1=imread('rice.png');
[a, b]=size(im1);
ID=double(im1);
if(a==b)
    N=b;
else
error('Use a different image');
end

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
dct2_inv=(b')*dct2*b;

b_op(im1,dct2,dct2_inv);

function b_op(im1,dct2,dct2_inv)
subplot(3,1,1);
imshow(im1);
title('Original image');
subplot(3,1,2);
imshow(uint8(dct2));
title('DCT of image');
subplot(3,1,3);
imshow(uint8(dct2_inv));
title('IDCT of image');
end
