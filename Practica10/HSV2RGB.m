%HSV --> RGB
A=imread('flores.jpg');
rgb = rgb2hsv('flores.jpg');
cmap = hsv2rgb(A);
d1=cmap(:,:,1);  %H
d2=cmap(:,:,2);  %S
d3=cmap(:,:,3);  %V
figure;imshow(A); pause;
figure;imshow(cmap);
figure;imshow(d1);
figure;imshow(d2);
figure;imshow(d3);
