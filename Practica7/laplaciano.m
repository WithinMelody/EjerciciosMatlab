I = imread('Zebras.jpg');
Im_RGB = rgb2gray(I);             % convierte a escala de grises
g = [0 1 0; 1 -4 1; 0 1 0]   ;     % Filtro Laplaciano de nosotros
Im_g = imfilter(I,g);           % Aplica laplaciano
Im_s = I + Im_g;                    %Suma img original + laplaciano
Isobel = edge(Im_RGB,'sobel');   % Detecta borde por söbel

h = [1 -2 1; -2 4 -2; 1 -2 1]   ;     % Laplaciano gaussiano definido por nosotros
Im_lg = imfilter(I,h);                % Laplaciano gaussiano
BW = edge(Im_RGB,'log');             % Laplaciano gaussiano función de matlab2

subplot(2,3,1), imshow(I), title('imagen original');
subplot(2,3,2), imshow(Im_g), title('laplaciano');
subplot(2,3,3), imshow(BW), title('laplaciano 2 funcion matlab');
subplot(2,3,4), imshow(Im_s), title('suma');
subplot(2,3,5), imshow(Isobel), title('Söbel');

subplot(2,3,6), imshow(Im_lg), title('laplaciano gaussiano ');




