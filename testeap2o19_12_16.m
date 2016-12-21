%% Ex - 1
clc
clear
close all

nc = 1;
nl = 250;
X  = (rand(nc,nl)<=0.4);

% a)

Y = filter([1 -0.5],[1],X,2);
avg_Y = mean(Y);

% b)

nl = 1000;
X  = (rand(nc,nl)<=0.4);
Y = filter([1 -0.5],[1],X);
avg_Y = mean(Y);

% E[Y] = p
%
% c)
n = 500;
Saux = periodogram(Y(1:n)',[],[],1)';
SY = mean(Saux,1);
plot(SY)


%d?
% teorico?



%% Ex 2
% a)
I = im2double(imread('parrots.png'));

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

var_R = var(R);
var_G = var(G);
var_B = var(B);


%% b)

r=ceil(255 * R) + 1;
g=ceil(255 * G) + 1;
b=ceil(255 * B) + 1;


for r_i = 1:256
    for b_i = 1:256
        c_rb(r_i, b_i) = sum(sum((r==r_i)&(b==b_i)));
    end
end  

p_rb = c_rb/sum(sum(c_rb));





