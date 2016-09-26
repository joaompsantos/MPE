%% Ex 1 && Ex2
% No Caderno

%% Ex3

N = 1000; % n de pontos, simular combinações entre atrasos
xy = -2 + 4*rand(2,N); % matriz de pontos xy

m = ((xy(1,:).^2)+xy(2,:).^2)<=4; % verificar condição e guardar os indices

M = xy(:,m); % guardar em mx os pares x y para os quais a condição anterior é válida

P_M = length(M)/length(xy); % P= NºFavoraveis/Nº Possiveis

fprintf('Probabilidade de M: %.3f%%\n',P_M*100);

%% Ex 4

Aq=4^2; % Area de S 
r=2;    % Raio circunferencia (M)

% Realação entre as areas e dedução no Caderno
Pi=Aq*P_M/r^2 % Valor Aproximado de pi