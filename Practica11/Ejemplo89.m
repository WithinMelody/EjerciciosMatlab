A=imread('text.png');                        				%Read in text 
B=imcrop(A);                              				%Read in target shape interactively
se1=B; se2=~B;                              			%Define hit and miss structure elements
bw=bwhitmiss(A,se1,se2);                    			%Perform hit-miss transformation
[i,j]=find(bw==1);                         		 		%Get explicit coordinates of locations
subplot(1,3,1), imshow(A);                  			%Display image
subplot(1,3,2), imagesc(B); axis image; axis off;   	%Display target shape
subplot(1,3,3), imshow(A); hold on; plot(j,i,'r*'); 	%Superimpose locations on image	