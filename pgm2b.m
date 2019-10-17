% 2.Design a discrete wavelet transform (DWT)
% b.2-dimensional signal(Image)

load sculpture
imagesc(X)
colormap gray
[LowD,HighD]=wfilters('haar','d');
[approx,horizontal,vertical,diagonal]=dwt2(X,LowD,HighD,'mode','symh');
plotting(approx,horizontal,vertical,diagonal)

function plotting(approx,horizontal,vertical,diagonal)
subplot(2,2,1);
imagesc(approx)
title('Approximation')
subplot(2,2,2)
imagesc(horizontal)
title('Horizontal')
subplot(2,2,3)
imagesc(vertical)
title('Vertical')
subplot(2,2,4)
imagesc(diagonal)
title('Diagonal')
end
