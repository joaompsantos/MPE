%% Init
% João Santos, nº MEC: 76552, 21/12/2016
% Setup 
clear
clc
close all

nmec = 76552;
a    = 1/(5+2*rem(nmec,2));

%% Ex - 1
nl = 100000;
nc = 1;

X  = 2*round(rand(nc,nl))-1;

%% Ex - 2

N = sqrt(a)*randn(nc,nl);

Y = X+N;

%% Ex - 3

digi_out = 2*(Y>=0)-1;
error_ct = sum((X-digi_out)~=0);
p_error  = error_ct/nl;

%% Ex - 4
b = (rand(nc,nl)<=0.95) + 0.05;
Y = b.*X+N;

%% Ex - 5

digi_out  = 2*(Y>=0)-1;
error_ct  = sum((X-digi_out)~=0);
p_error_n = error_ct/nl;

%% Ex - 6

N    = a+randn(2,nl);
b    = (rand(2,nl)<=0.95) + 0.05;
X    = 2*(rand(1,nl)<=0.95)-1;
Xaux = [X;X;];
Y    = b.*Xaux+N;

coef = corrcoef(Y(1,:),Y(2,:));


%% Ex -7

Y          = Y(1,:)+Y(2,:);
digi_out   = 2*(Y>=0)-1;

error_ct   = sum((X-digi_out)~=0);
p_error_2n = error_ct/nl;

