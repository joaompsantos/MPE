 %% Ex1
L = 1000;

[A, B, C, D] = NUMEROS(L);

P_B=length(B)/L;
fprintf('P(B) = %.3f\n',P_B);

P_C=length(C)/L;
fprintf('P(C) = %.3f\n',P_C);

P_D=length(D)/L;
fprintf('P(D) = %.3f\n',P_D);

BC=C(~rem(C,2));                    % Interseção
P_BC= length(BC)/length(C);         % P(B|C)
fprintf('P(B|C) = %.3f\n', P_BC);

BD=D(~rem(D,2));                    % Interseção
P_BD= length(BD)/length(D);         % P(B|D)
fprintf('P(B|D) = %.3f\n', P_BD);

P_BeC=length(BC)/L;           % P(BeC)
fprintf('P(BIntersetadoC) = %.3f\n', P_BeC);

P_BeD=length(BD)/L;           % P(BeD)
fprintf('P(BIntersetadoD) = %.3f\n', P_BeD);