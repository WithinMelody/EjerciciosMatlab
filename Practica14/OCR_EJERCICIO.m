img_texto   = imread('minombre.bmp');
resultados     = ocr(img_texto);
textoreconocido = resultados.Text;
figure;
imshow(img_texto);
fid = fopen('archivito.txt', 'wt');%abre archivo para escritura
fprintf(fid,'%s\n',textoreconocido);
fclose(fid); 
winopen('archivito.txt')%abre archivo y muestra
      
%text(500, 150, textoreconocido, 'BackgroundColor', [1 1 1]);