%% Ex - 1
n = 100;
p = 0.1;

x = rand(1,n);
Xn = 1*(x<=p);
stem(Xn)

%% Ex - 2

n = 100;
p = 0.1;

x = rand(5,n);
Xn = 1*(x<=p);

Yn = cumsum(Xn,2);
hold on
for i=1:5
   subplot(5,1,i);
   stem(Yn(i,:))
end

figure
avg_t = 0.1.*(1:n);
avg = mean(Yn);
va  = var(Yn);
va_t = (1:n).*p*(1-p);
hold on
stem(avg);
plot(avg_t);
legend('Yn','E(Sn)','V(Sn)')

%% Ex - 3
N = 100;
n = 200;
p = 0.5;

x  = rand(N,n);
Xn = 1*(x<=p);
Sn = cumsum(Xn,2);

%% a)
edges = [1 50 51 100 101 150 151 200];
y =  0:50;
mu = 50*p;
sigma = 50*p*(1-p);
f = 100*exp(-(y-mu).^2./(2*sigma))./(sqrt(sigma*2*pi));

for i=1:length(edges)/2
    subplot(length(edges)/2,1,i);
    histogram(Sn(:,edges(2*i))'-Sn(:,edges(2*i-1))',25);
    hold on
    plot(y,f,'LineWidth',1.5)
    legend(sprintf('[%d , %d]',edges(2*i-1),edges(2*i)));
end    
    
%% b)
p2 = 0.1;

x  = rand(N,n);
Xn(:,1:50) = (x(:,1:50)<=p2);
Xn(:,51:n) = (x(:,51:n)<=p);
Sn = cumsum(Xn,2);
hold
plot(cumsum(Sn(:,50)'-Sn(:,1)'));
plot(cumsum(Sn(:,100)'-Sn(:,51)'));
% A contagem para n>50, o que tem p=0.5 nao depende da contagem feita
% anteriormente ate 50 com p = 0.2, logo sao independentes.


%% Ex - 4
% n*p = l*t


lambda = 1;
t = 100;


%%


