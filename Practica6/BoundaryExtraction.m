A=imread('circles.png'); 
bw=bwperim(A); 
se=strel('disk',5); 
E= imerode(A,se); %erosion

bw1=A-imerode(A,se); %extraccion de un perimetro fino

subplot(1,4,1), imshow(A), title('Original');
subplot(1,4,2), imshow(bw),title('Perimetro');
subplot(1,4,3), imshow(E), title('Erosionada');
subplot(1,4,4), imshow(bw1), title('Resultado');


