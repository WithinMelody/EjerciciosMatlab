%Eliminar ruido por filtrado adaptativo

RGB = imread('saturn.png');
I = rgb2gray(RGB);
J = imnoise(I,'gaussian',0,0.025);
figure; imshow(J);  title('imagen con ruido Gaussiano');
K = wiener2(J,[5 5]);
figure; imshow(K); title('Porci�n de la imagen con ruido removido con el  Wiener Filter');