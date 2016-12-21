% Parte I
%% Ex-1
n = 100000;
X = ceil(6*rand(1,n));
minX = min(X);
maxX = max(X);
e = [minX:maxX+1]-0.5;
H = histc(X,e);
nBins = length(e)-1;
binCenters = [minX:maxX];
bar(binCenters, H(1:nBins));

%% Ex-2
% Com o aumento o umero de ocurrencias ficam mais proximos

%% Ex-3)

n = 10000;
X = ceil(6*rand(2,n));
X = sum(X(:,:));
minX = min(X);
maxX = max(X);
e = [minX:maxX+1]-0.5;
H = histc(X,e);
nBins = length(e)-1;
binCenters = [minX:maxX];
bar(binCenters, H(1:nBins));

%% Parte II
%% Ex-1

