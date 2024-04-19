I=imread('LETRAP1.jpg');
imshow(I);
pause;
whos I
K=imfinfo('LETRAP1.jpg');
image_bytes = K.Width*K.Height*K.BitDepth/8;
compressed_bytes = K.FileSize;
compression_ratio = image_bytes/compressed_bytes;