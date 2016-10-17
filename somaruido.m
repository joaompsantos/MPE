function [sinalr] = somaruido(y, SNR)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    % SNR = Psinal/Pruido
    Pruido = sum(sum(y.^2))/(size(y,1)*size(y,2))/SNR;
    sigma = sqrt(Pruido);
    ruido = randn(size(y,1),size(y,2))*sigma;
    sinalr = y + ruido;
end

