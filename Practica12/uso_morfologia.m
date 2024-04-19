BW = imread('circles.png'); figure; imshow(BW);title('original');
BW2 = bwmorph(BW,'remove'); figure; imshow(BW2);title('sin píxeles internos');
BW3 = bwmorph(BW,'skel',Inf); figure; imshow(BW3);title('esqueleto');
BW4 = bwmorph(BW3,'endpoints',Inf); figure; imshow(BW4);title('puntas');
BW5 = bwmorph(BW,'thin',Inf); figure; imshow(BW5);title('adelgazamiento');