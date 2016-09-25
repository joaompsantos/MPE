%% 1
%caras = 1

N = 1000; % n de execuções
n = 100; % numero de lancamentos
m = 1; % numero de moedas
ct = []; % contagem a cada execução

for i=1:N
    X = round(rand(m,n)); 
    ct = [ct sum(X(:))]; % contar e guardar caras
end

% all in one line by prof
% ct = [ct sum(round(rand(m*N,n)),2)];

cmin = min(ct); % minimo de ocorrencias 
cmax = max(ct); % maximo de ocorrentias
fprintf('x => {%d,%d}\n', cmin, cmax); % print it

%% 2)
for i=1:5
    auxmax = ceil((cmax-cmin)/i)*i+cmin; % cheater para acertar o maximo nos multiplos da largura da barra começando no min
    e = [cmin:i:auxmax+i]-0.5*i; % pontos limite entre barras
    H = histc(ct,e); % gerar histograma (contar)
    nBins = length(e)-1; % n de barras
    binCenters = [cmin:i:auxmax]; % centro das barras
    bar(binCenters, H(1:nBins)) % mostrar
    title(sprintf('Moedas: %d Lançamentos: %d Execuções: %d Largura: %d', m, n, N, i));
    pause;
end
close all;

%% 3)
m = round(mean(ct)); % nao faz sentdo falar em meias moedas?
      
%% 4)
va = var(ct); % variancia
sd = std(ct); % desvio padrao

%% 5)
close all
lb = 2; % largura da barra
auxmax = ceil((cmax-cmin)/lb)*lb+cmin; % cheat para acertar o maximo nos multiplos da largura da barra começando no min
e = [cmin:lb:auxmax+lb]-0.5*lb; % pontos limite entre barras
H = histc(ct,e); % gerar histograma (contar)
nBins = length(e)-1; % n de barras
binCenters = [cmin:lb:auxmax]; % centro das barras
bar(binCenters, H(1:nBins)) % mostrar
title(sprintf('Moedas: %d Lançamentos: %d Execuções: %d Largura: %d', m, n, N, lb));
hold on

k = lb*N;

aux = cmin:0.1:auxmax; % pontos para calcular a função densidade
f = k/sqrt(2*pi*va)*exp(-0.5*(power((aux-m)/sd,2)));
plot(aux, f,'r', 'LineWidth',3);
legend('Caras por execução', 'Densidade de Probabilidade');
