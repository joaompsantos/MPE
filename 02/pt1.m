%% Ex 0 && Ex1
% No Caderno

Y = [0.00, 0.25, 0.75;
     0.00, 0.50, 0.50;
     0.50, 0.50, 0.00;
     0.75, 0.25, 0.00];

X = [0;
     0.25;
     0.75;
     1.00;]; 
h = area(X,Y);

h(3).FaceColor = [0.05, 0.4, 0.9];
h(2).FaceColor = [0.9, 0.9, 0.06];
h(1).FaceColor = [0.05, 0.4, 0.9];
title('Experiencia');
legend('S','M');
axis([0 1.5 0 1.5]);

%% Ex 2

N = 1000; % n de pontos, simular combinações entre atrasos
xy = rand(2,N); % matriz de pontos xy

condM = abs(xy(1,:)-xy(2,:))<0.25; % verificar condição e guardar os indices

P_M = sum(condM)/N; % P= NºFavoraveis/Nº Possiveis

fprintf('Probabilidade de M: %.3f%%\n',P_M*100);


%% Ex 3

P_M=[];

N = 10000;
xy = rand(2,N);
condM = abs(xy(1,:)-xy(2,:))<0.25;
freq_acum_M = cumsum(condM);
nexp = 1:1:N;
P_M = freq_acum_M./nexp;

plot(1:N,P_M);
legend('P(M)');
xlabel('Nº de Pontos');

