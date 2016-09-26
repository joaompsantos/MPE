%% Ex 1 && Ex2
% No Caderno

%% Ex3

N = 1000; % n de pontos, simular combina��es entre atrasos
xy = -2 + 4*rand(2,N); % matriz de pontos xy

m = ((xy(1,:).^2)+xy(2,:).^2)<=4; % verificar condi��o e guardar os indices

M = xy(:,m); % guardar em mx os pares x y para os quais a condi��o anterior � v�lida

P_M = length(M)/length(xy); % P= N�Favoraveis/N� Possiveis

fprintf('Probabilidade de M: %.3f%%\n',P_M*100);

%% Ex 4

Aq=4^2; % Area de S 
r=2;    % Raio circunferencia (M)

% Reala��o entre as areas e dedu��o no Caderno
Pi=Aq*P_M/r^2 % Valor Aproximado de pi