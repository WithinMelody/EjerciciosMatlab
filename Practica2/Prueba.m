RGB = imread('Perros.jpeg');
I = rgb2gray(RGB); %grises
J = imnoise(I,'gaussian',0,0.025); %filtro gausiano 
K = wiener2(J,[5 5]);
figure; imshow(K); 
L = imnoise(I,'salt & pepper',0.02); %sal y pimienta
Kaverage = filter2(fspecial('average',3),L)/255;
Kmedian = medfilt2(J); imshowpair(Kaverage,Kmedian,'montage')
subplot(2,2,1), imshow(I), title('Imagen gris');
subplot(2,2,2), imshow(K), title('Wiener Filter');
subplot(2,2,3), imshow(Kaverage), title('promedio');
subplot(2,2,4), imshow(Kmedian), title('mediana');