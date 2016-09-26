%% Ex 1 && Ex2
% No Caderno

Y = [-2, 4;
     -2, 4;
     -2, 4;];

X = [-2;
      0;
      2;]; 
h = area(X,Y);
hold on;
circle2(0,0,2);
h(2).FaceColor = [0.05, 0.4, 0.9];
title('Experiencia');
axis([-3 3 -3 3]);


%% Ex3

N = 1000; % n de pontos, simular combina��es entre atrasos
xy = -2 + 4*rand(2,N); % matriz de pontos xy

condM = ((xy(1,:).^2)+xy(2,:).^2)<=4; % verificar condi��o e guardar os indices

P_M = sum(condM)/N; % P= N�Favoraveis/N� Possiveis

fprintf('Probabilidade de M: %.3f%%\n',P_M*100);

%% Ex 4

Aq=4^2; % Area de S 
r=2;    % Raio circunferencia (M)

% Reala��o entre as areas e dedu��o no Caderno
Pi=Aq*P_M/r^2; % Valor Aproximado de pi

fprintf('Valor estimado de Pi = %.3f \n',Pi);