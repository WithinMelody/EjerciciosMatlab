%RGB --> HSV
A=imread('cromo.jpg');
cmap = rgb2hsv(A);
d1=cmap(:,:,1);  %H
d2=cmap(:,:,2);  %S
d3=cmap(:,:,3);  %V
figure;imshow(A); 
figure;imshow(cmap);
figure;imshow(d1);
figure;imshow(d2);
figure;imshow(d3);
pause;
rgb_image = hsv2rgb(cmap);
figure; imshow(rgb_image);
R = A(:,:,1);
G = A(:,:,2);
B = A(:,:,3);
figure; imshow(R);
figure; imshow(G);
figure; imshow(B);

% image_hsv = rgb2hsv(R);
% hue_r = image_hsv(:,:,1);
% figure; imshow(image_hsv);
% figure; imshow(hue_r);

















