%% 1.b)
N = 1e6;
XY = (-2 + 4*rand(2,N));
condC = ((XY(1,:).^2)+XY(2,:).^2)<=(2^(1/2));
condE = (((XY(1,:)/2).^2)+XY(2,:).^2)<=1;

P_C = sum(condC)/N;
P_E = sum(condE)/N;
fprintf('P(C): %.3f\n',P_C);
fprintf('P(E): %.3f\n',P_E);

%% 1.c)
nrep = 1:1:N;
frq_ac_C = cumsum(condC);
P_C = frq_ac_C./nrep;

frq_ac_E = cumsum(condE);
P_E = frq_ac_E./nrep;

plot(1:N, P_C, 1:N, P_E);
legend('P(C)','P(E)');
xlabel('Nº de Pontos');

%% 1.d)
a = 2;
b = 1;
r = 2^(1/4);

As = 4*4;
Ac = pi*r^2;
Ae = a*b*pi;

P_CA = Ac/As;
P_EA = Ae/As;
fprintf('P(Ca): %.3f\n',P_CA);
fprintf('P(Ea): %.3f\n',P_EA);
%% 1.e)

CemE = condE(condC);
P_CemE = sum(CemE)/sum(condE);

CeE = condE & condC;
P_CeE = sum(CeE)/N;
fprintf('P(CemE): %.3f\n',P_CemE);
fprintf('P(CeE): %.3f\n',P_CeE);

% Regra de Bayes
% P(CeE) = P(CemE)*P(E) 
% <=> 0.254 = 0.646*0.393
