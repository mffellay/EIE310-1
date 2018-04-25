function [y, ny] = convol(x, nx, h, nh)
% Convoluci�n modificada para incluir informaci�n de tiempo
% Convuelve 'x' con 'h' usando 'conv' de MATLAB
% Genera el vector 'ny' el cual sirve como �ndice del vector 'y'
% nx = �ndice de x nh = �ndice de h
ny1 = nx(1) + nh(1); % primer elemento del vector ny
ny2 = nx(length(x)) + nh(length(h)); % �ltimo elemento del vector ny
ny = [ny1 : ny2]; % crea el vector ny
y = conv(x, h); % convuelve x con h --> y