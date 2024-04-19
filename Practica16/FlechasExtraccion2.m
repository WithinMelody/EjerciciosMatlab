function features = FlechasExtraccion(I);


J = imdilate(not(I),ones(3,3));

[L,n] = bwlabel(J,4);

features = zeros(n);
disp('Extrayendo perímetro');
for i=1:n
    R = L==i;
    figure(2)
    imshow(R);
    pause(1);
    s = regionprops(I,'Perimeter', 'Area');
    p = double(s.Perimeter);
    %a = s.Area;
   features(i:n) = p;
end
imshow(J)