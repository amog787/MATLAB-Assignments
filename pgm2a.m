% 2.Design a discrete wavelet transform (DWT)
% a.1-dimensional sequence

clc;
clf;
x =  [7     4     9     10     2    6     3     8]; %Vector for dwt
[LoD,HiD] = wfilters('haar','d'); %wavelet filter
[cA,cD] = dwt(x,LoD,HiD); %returns Approx and Detail coefficients
subplot(311); plot(x); title('Original signal'); 
subplot(323); plot(cA); title('Approximation coefficient for haar'); 
subplot(324); plot(cD); title('Detail coefficient for haar');
