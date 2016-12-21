%% Ex - 1 

Ts = 0.1;
n  = 1000;
t = (0:n)*Ts;
N = 1;

ns = 32;
f0 = 50;
fd = 10;

X=zeros(N,length(t));

w = 2*pi*rand(N,ns);

for k = 1:N
    for i = 1:ns
     Fi = f0+i*fd;
     X(k,:) = X(k,:) + cos(2*pi*Fi*t+w(k,i)); 
    end
end

plot(X)