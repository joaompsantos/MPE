load digitos.mat

digito = cell(1,size(X,1));

ncol = 100;
nlin = 64;

for i = 1:size(X,1)
   digito{i} = reshape(X(i,:),ncol,nlin);
   subplot(2, 5, i)
   imagesc(digito{1,i})
end    

%% Ex - 2
sel = round(6*rand(1)+1);
digito_m = mean(X(sel,:));
digito_v = var(X(sel,:));
vari = 8*digito_v;
N = randn(1,size(X,2))*sqrt(vari);

digito_new = X(sel,:) + N;
imagesc(reshape(digito_new,ncol,nlin));
digito_new_m = mean(digito_new);
digito_new_v = var(digito_new);

aux = cov(X(sel,:)',N');
coef_DN = aux(1,2)/sqrt(aux(1,1)*aux(2,2));

aux = cov(digito_new',N');
coef_YN = aux(1,2)/sqrt(aux(1,1)*aux(2,2));

aux = cov(digito_new',X(sel,:)');
coef_YD = aux(1,2)/sqrt(aux(1,1)*aux(2,2));

digito_new_var = 9*var(X(sel,:));

%% Ex - 3

sel = round(6*rand(1)+1);
digito_v = var(X(sel,:));
vari = 8*digito_v;
n = 10;

N = randn(n,size(X,2))*sqrt(vari);
D = repmat(X(sel,:),n,1);

RX = N+D;

Z = mean(RX); 

for i = 1:size(X,1)
   RXd{i} = reshape(RX(i,:),ncol,nlin);
   subplot(2, 5, i)
   imagesc(RXd{1,i})
end  
figure
imagesc(reshape(Z,ncol,nlin));

snr = snr(X(sel,:),Z-X(sel,:));
