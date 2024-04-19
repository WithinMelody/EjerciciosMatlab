I=imread('coins.png');
[Gx, Gy] = imgradientxy(I);
[Gmag, Gdir] = imgradient(Gx, Gy);
figure; imshow(Gx); title('Gx');
figure; imshow(Gy); title('Gy');
 figure; imshowpair(Gmag, Gdir, 'montage'); axis off;
title('Magnitud de Gradiente (Gmag) y Direccion de Gradiente (Gdir) Söbel')
figure; imshowpair(Gx, Gy, 'montage'); axis off;
title ('Gradientes direccionales, Gx y Gy usando Söbel')
