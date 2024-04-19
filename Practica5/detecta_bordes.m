I=imread('coins.png');
figure,imshow(I)

BW1=edge(I,'sobel');
RB= edge(I,'roberts');
PW= edge(I,'prewitt');
BW2= edge(I,'canny');
%figure, imshow(BW1),title('Sobel');
%figure, imshow(RB),title('Roberts');
%figure,imshow(PW), title('Prewitt');
%figure,imshow(BW2),title('Canny');
subplot(2,2,1),imshow(BW1),title('Sobel');
subplot(2,2,2),imshow(RB),title('Roberts');
subplot(2,2,3),imshow(PW),title('Prewitt');
subplot(2,2,4),imshow(BW2),title('Canny');