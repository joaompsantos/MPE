%% Init
% João Santos, nº MEC: 76552, 21/12/2016
% Setup 
clear
clc
close all

nmec = 76552;
a    = 1 +rem(nmec,3);

%% Ex - 1
p  = 1/2;
nc = 1;
nl = 100000;

I = round(rand(nc,nl));
X = a*(2*I-1);

%% Ex - 2

Y = cumsum(X);

%% Ex - 3
% a)
meandxX = mean(X);
vardxX  = var(X);

% b)
% E[X] = E[a(I-1)]
% = aE[I-1] 
% = aE[I] + aE[-1]
% = aE[I] - a
% = -a
%
% c)
p = 1/2;
nc = 1000;
nl = 1000;

I = round(rand(nc,nl));
X = a*(2*I-1);

meanrxX = mean(mean(X,2));
meantxX = mean(mean(X,1));

eps = 0.001;
if abs(meanrxX-meantxX)<eps 
    fprintf('Processo ergodico na media. \n');
end

%% Ex - 5
% a)
nc = 1;
nl = 100000;

I = round(rand(nc,nl));
X = a*(2*I-1);
N = randn(nc,nl)*sqrt(a);

R = X + N;

%b)
XR = 2*a*(R>=0)-a;


%c)
error    = ((X-XR)~=0);
error_ct = sum(error);
p_error  = error_ct/length(XR);

%%  Ex - 6
nc = 3;
nl = 100000;

I = round(rand(1,nl));
X = a*(2*I-1);

Xaux = [X; X; X;];
N    = randn(nc,nl)*sqrt(a);
R    = X + N;

XR = XR(1,:)+XR(2,:)+XR(3,:);
XR = 2*a*(XR>=0)-a;

error_ct  = sum((X-OUT)~=0);
p_error_n = error_ct/nl;


