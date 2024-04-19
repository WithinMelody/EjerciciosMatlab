imagen = imread('letras.jpg');
bin=im2bw(imagen,0.5);
esq=bwmorph(bin,'skel',Inf);
imshow(imagen);
figure,imshow(esq);