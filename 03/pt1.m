%% Setup Code
N = 512;
load trab03.mat; % é criada a variável y
figure(1);
imagesc(reshape(y,N,N));
colormap(gray);
colorbar

%% 1.

symb = unique(y);
ct = length(symb);

%% 1.a)
histogram(y,ct);

%% 1.b)
% 8 bits
% log2(ct);

%% 2.a)
y_ac = y - mean(y);

y_ac_r = somaruido(y_ac, 1);
r = round(y_ac_r-y_ac);
y_f = round(y_ac_r);

Pr = sum(r.^2)/length(r);
Ps = sum(y_f.^2)/length(y_f);
SNR = Ps/Pr;

fprintf('SNR: %.3f\n',SNR);
imagesc(reshape(y_f,N,N));

%% 2)
% Qualidade da Imagem diminui com a diminuição do SNR

%% 3.a)
bin_str = dec2bin(y,8);
bin_dt = rem(double(bin_str),2); % converte string em nmrs
plr_bin_tx = 2*bin_dt-1; % conversão para polar
 
plr_bin_rx = somaruido(plr_bin_tx,100); % sinal recebido

plt_bin_filt = round(plr_bin_rx); % "filtrar" o ruido
plt_bin_fin = (plt_bin_filt+1)/2;

dec_val_rx = plr_bin_rx*([128 64 32 16 8 4 2 1]'); % converter para decimal

imagesc(reshape(dec_val_rx,N,N));

%% 4)
ydif = diff(y);
figure(1)
hist(y, ct);
figure(2)
hist(ydif, ct);

% ydif têm menos simbolos que y
% Relativamente a y, sao necessarios menos simbolos para transmitir ydiff

%% 5)

% a)
nbits = 3;
yq = floor(y/2^(8-nbits));

%b)
ydifq = diff([0; yq]);

%c)
offset=abs(min(ydifq));
qb_str = dec2bin(ydifq+offset,8);
yqb_dt = rem(double(qb_str),2); 
ydb_tx = 2*yqb_dt-1; 


ydb_rx = somaruido(ydb_tx,90); 

ydb_rx_f = round(ydb_rx); 
ydb = (ydb_rx_f+1)/2;

yd_rx_fin = ydb*([128 64 32 16 8 4 2 1]')-offset; 


A = [1 -1];
B = [1];

y_rx = filter(B, A, yd_rx_fin);

imagesc(reshape(y_rx,N,N));
colorbar

% g)
% a distorção aparece estruturada em barras uma vez que y(n) é calculado
% tendo em conta y(n), se y(n) tiver erro, todas as amostras para a frente
% estao afetados pelo erro
