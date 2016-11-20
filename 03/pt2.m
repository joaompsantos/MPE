%% 1)
load trab03.mat;
nbits = 7;
yq = floor(y/2^(8-nbits));
ydifq = diff(yq);


nbars_yq = max(yq);
nbars_ydifq = max(ydifq);
pmf_yq = histc(yq, 1:nbars_yq)./numel(yq);     
pmf_yqdifq = histc(ydifq, 1:nbars_ydifq)./numel(ydifq);

figure('Name','PMF`s','NumberTitle','off')
subplot(2,1,1);
plot(pmf_yq);
legend('pmf(yq)');
subplot(2,1,2);
plot(pmf_yqdifq);
legend('pmf(ydifq)');



%% 2)
figure('Name','Histogramas','NumberTitle','off')
subplot(2,1,1);
histogram(yq, nbars_yq);
subplot(2,1,2);
histogram(ydifq, nbars_ydifq);


%% 3)
nbits_a = 3*length(ydifq);

nbits_b = 0;




