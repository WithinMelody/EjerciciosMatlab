Im_RGB=imread('IM_RGB.jpg');
imshow(Im_RGB)
Im_gray=rgb2gray(Im_RGB);
Im_gray=medfilt2(Im_gray);
figure,imshow(Im_gray)
Im_edge=edge(Im_gray,'sobel');
figure,imshow(Im_edge)
Im_edge2=not(Im_edge);
figure,imshow(Im_edge2);