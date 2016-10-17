%% Ex 1
N=10000; % Execuções
D1 = ceil(6*rand(4,N));
condA = (D1==6);
nsix = sum(condA);
P_A = sum(nsix>=1)/N;
fprintf('Probabilidade de A: %.3f\n',P_A);


D1 = ceil(6*rand(24,N));
D2 = ceil(6*rand(24,N));
condB = (D1==6)&(D2==6);
nduplos = sum(condB);
P_B = sum(nduplos>=1)/N;
fprintf('Probabilidade de B: %.3f\n',P_B);

% A é mais provável que B