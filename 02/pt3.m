%% Ex 1
N=1000; % Execuções

P_A=sum(sum(ceil(6*rand(4,N))==6)>0)/N;
fprintf('Probabilidade de A: %.3f\n',P_A);



P_B=sum(sum(ceil((6*rand(24,N))+ceil(6*rand(24,N)))==12)>0)/N;
fprintf('Probabilidade de B: %.3f\n',P_B);
