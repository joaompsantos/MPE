%% Ex 0 && Ex1
% No Caderno

%% Ex 2

N = 1000; % n de pontos, simular combinações entre atrasos
xy = rand(2,N); % matriz de pontos xy

m = abs(xy(1,:)-xy(2,:))<0.25; % verificar condição e guardar os indices

M = xy(:,m); % guardar em mx os pares x y para os quais a condição anterior é válida

P_M = length(M)/length(xy); % P= NºFavoraveis/Nº Possiveis

fprintf('Probabilidade de M: %.3f%%\n',P_M*100);

%% Ex 3
tic
K = 1000;
P_M=[];
for i=1:K
    N = i*K;
    xy = rand(2,N);
    m = abs(xy(1,:)-xy(2,:))<0.25;
    m = xy(:,m);
    P_M = [P_M length(m)/length(xy)];
end

plot(1:length(P_M),P_M);
toc