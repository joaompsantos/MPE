%% 
n = 100; % numero de lancamentos 
X = ceil(6*rand(1,n)); % gerar numeros
minX = min(X);
maxX = max(X);
e = [minX:maxX+1]-0.5; % pontos limite entre barras
H = histc(X,e); % gerar histograma (contar)
nBins = length(e)-1; % n de barras
binCenters = [minX:maxX]; % centro das barras
bar(binCenters, H(1:nBins)) % mostrar

%% 1)
% 1-21; 2-16; 3-19; 4-15; 5-16; 6-13;
% Sairam numero de vezes ligeiramente diferente porque foram realizados
% poucos lançamentos


%% 2)
% Ao aumentar o numero de lançamentos os resutados estabilizam

%% 3)

n = 100000; % numero de lancamentos
N = 2; % Numero de dados

X = ceil(6*rand(N,n));
X = sum(X(:,:));
minX = min(X(:));
maxX = max(X(:));
e = [minX:maxX+1]-0.5;
H = histc(X(:),e);
nBins = length(e)-1;
binCenters = [minX:maxX];
bar(binCenters, H(1:nBins))
title(sprintf('Dados: %d Lançamentos: %d', N, n));
      