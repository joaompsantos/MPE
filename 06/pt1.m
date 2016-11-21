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
hold on
stem(avg)
plot(avg_t);
legend('Yn','E(Xn)')

%% Ex - 3


