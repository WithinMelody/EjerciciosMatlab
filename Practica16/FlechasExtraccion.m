function features = FlechasExtraccion(I);



J = imdilate(not(I),ones(3,3));

[L,n] = bwlabel(J,4);

features = zeros(n,7);
%features = zeros(n,2);

disp('Extrayendo Momentos de Hu...');
for i=1:n
    R = L==i;
    figure(2)
    imshow(R);
    pause(0);
    HM = HuMom(R);
    features(i,:)=HM;
    
end
%   
imshow(J)