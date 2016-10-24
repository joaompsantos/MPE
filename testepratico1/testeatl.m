% João Santos - 76552
% 2016-2017
%%%%%%%%%%%%%%%%%%%
nmec = 76552;
k = 3+rem(nmec,3);
l = 3+rem(nmec,5);
%%%%%%%%%%%%%%%%%%
%% Ex-1
S = round(9*rand(k,100000));

%% Ex-2
X = rem(prod(S(1:k-1,:)),10);

%% Ex-3

nBins_X = length(unique(X));
h=histogram(X,nBins_X);
h.BinEdges = [min(X):max(X)+1]-0.5;

%% Ex-4
Y = rem(prod(S(:,:)),10);

%% Ex-5
nBins_Y = length(unique(Y));
h = histogram(Y,nBins_Y);
h.BinEdges = [min(Y):max(Y)+1]-0.5;

%% Ex-6
pmf_X = hist(X, nBins_X)./length(X);

pmf_Y = hist(Y, nBins_Y)./length(Y);

ent_X = - sum(pmf_X.*log2(pmf_X));
ent_Y = - sum(pmf_Y.*log2(pmf_Y));


%% Ex-7
A = (X==l);
B = (Y==l);

p_A = sum(A)/length(X);
p_B = sum(A)/length(Y); % length(X) = length(Y)

AeB = (A(:)==B(:));
p_AeB = sum(AeB)/length(X); % #elementos em X,Y,A e B é o mesmo

if(p_A*p_B==p_AeB)
    fprintf('Acontecimentos Independentes\n');
else
    fprintf('Acontecimentos Dependentes\n');
end

%% Ex-8
%CCalcular direto pela formula?
    
