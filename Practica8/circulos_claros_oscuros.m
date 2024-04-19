
%A = imread('monedas.jpg');

A = imread('monedas.jpg');
B=A;
figure; imshow(B);
figure, imshow(A);
Rmin = 50; %30
Rmax = 70; %65
[centersBright, radiiBright] = imfindcircles(A,[Rmin Rmax],'ObjectPolarity','bright');
[centersDark, radiiDark] = imfindcircles(A,[Rmin Rmax],'ObjectPolarity','dark');
viscircles(centersBright, radiiBright,'EdgeColor','b');
viscircles(centersDark, radiiDark,'LineStyle','--');
