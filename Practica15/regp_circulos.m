% a = imread('circlesBrightDark.png');
 a = imread('letrap1.jpg');
 a = rgb2gray(a);

bw = a < 100;
imshow(bw)
title('Imagen con letras')
L = bwlabel(bw,8);
stats = regionprops(L,'all');
stats(1)

% stats = regionprops(bw,'Area','centroid');
% stats(1)

% %Obtiene los centros y radios
centers = stats.Centroid;
diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
radii = diameters/2;

