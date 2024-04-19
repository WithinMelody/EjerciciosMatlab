I = imread('postip_3.jpg');
imshow(I);
K = rangefilt(I);
E = entropy(I);
J = entropyfilt(I);
figure
imshow(K)