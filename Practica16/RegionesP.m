function regiones = RegionesP(I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


s = regionprops(I,'Perimeter', 'Area');
%p = s.Perimeter;
%a = regionprops(I,'area');
p = double(s.Perimeter);
a = double(s.Area);
%a = s.Area;
regiones = [p a];
end

