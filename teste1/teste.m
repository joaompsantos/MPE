%% Setup
nmec = 76552;
k = 6+rem(nmec^2, 3);
l = 6+rem(nmec^2, 5);

%% Ex-1
S = randi([1 6], k, nmec);

%% Ex-2
X = rem(prod(S(1:k,:)),10);

%% Ex-3
e = [min(X):max(X)+1]-0.5;
nbins = length(e)-1;
h = histogram(X,nbins);
h.BinEdges = e;

%% Ex-4
aux = prod(S(1:k,:));
Y = floor(floor(aux)./(10.^(floor(log10(aux)))));

%% Ex-5
e = [min(Y):max(Y)+1]-0.5;
nbins = length(e)-1;
h = histogram(Y,nbins);
h.BinEdges = e;

%% Ex-6
m_X = mean(X);
v_X = var(X);

m_Y = mean(Y);
v_Y = var(Y);

%% Ex-7
A = (X==1);
B = (Y==1);

p_A = sum(A)/length(A);
p_B = sum(B)/length(B);

AeB = and(A,B);
p_AeB = sum(AeB)/length(A);

if(p_A*p_B==p_AeB)
    fprintf('Acontecimentos Independentes\n');
%% 
p_BaposA = p_AeB/p_A