% Trabalho 4
lower = ['abcdefghijklmnopqrstuvwxyz'];
upper = ['ABCDEFGHIJKLMNOPQRSTUVWXYZ'];
punct = ['!,;.:=?-() ' sprintf('\n')];

%% Ex-1

fid = fopen('book3.txt','r');

line = fgets(fid);
count = zeros(3,length(lower));
upp = zeros(1,length(upper));

while(line~=-1)
    for(i=1:length(lower))
        count(1,i) = count(1,i) + sum(line==lower(i));
        count(2,i) = count(2,i) + sum(line==upper(i));
        if(i<=length(punct))
            count(3,i) = count(3,1) + sum(line==punct(i)); 
        end    
    end    
    line = fgets(fid);
end

pmf = count./sum(count(:));
fclose(fid);

subplot(3,1,1);
bar(pmf(1,:));
set(gca, 'XTick', 1:length(lower), 'XTickLabel', lower(:));
subplot(3,1,2);
bar(pmf(2,:));
set(gca, 'XTick', 1:length(upper), 'XTickLabel', upper(:));
subplot(3,1,3)
bar(pmf(3,1:length(punct)))
set(gca, 'XTick', 1:length(punct), 'XTickLabel', punct(:));

%% EX - 3

ent_X = sum(pmf(1,:).*log2(1./pmf(1,:)))+sum(pmf(2,:).*log2(1./pmf(2,:)))+sum(pmf(3,1:length(punct)).*log2(1./pmf(3,1:length(punct))));

%% Ex - 4
%utf-8
NbitsT = 8*sum(count(:));
% codigo3
count_sort = sort([count(1,:) count(2,:) count(3,1:length(punct)) ],'descend');

Nbits_code3 = 2*count_sort(1)+2*count_sort(2)+2*count_sort(3)+sum(count_sort(4:end)*8);
Tx3 = NbitsT/Nbits_code3;

Nbits_code2 = 1*count_sort(1)+sum(count_sort(2:end)*8);
Tx2 = NbitsT/Nbits_code2;

%% Ex - 5

Comp = 478;
Orig = 1331.2;
tx_rar = Orig/Comp;

% Sistema de compressao comprime mais usando lossless compression.
% ffffuuuuu -> f4u5

%% 7
%vizualizar acumulada
% subplot(3,1,1);
% bar(cumsum(pmf(1,:)));
% set(gca, 'XTick', 1:length(lower), 'XTickLabel', lower(:));
% subplot(3,1,2);
% bar(cumsum(pmf(2,:)));
% set(gca, 'XTick', 1:length(upper), 'XTickLabel', upper(:));
% subplot(3,1,3)
% bar(cumsum(pmf(3,1:length(punct))))
% set(gca, 'XTick', 1:length(punct), 'XTickLabel', punct(:));

cmf = zeros(3,length(lower));
cmf(1,:)=cumsum(pmf(1,:));
cmf(2,:)=cumsum(pmf(2,:));
cmf(3,1:length(punct))=cumsum(pmf(3,1:length(punct)));

cmf_g = [cmf(1,:) cmf(2,:) cmf(3,1:length(punct))];
x=[];
alfabeto = [lower upper punct];
for i=1:5000
    r=rand;
    ind=find(r<=cmf_g,1,'first');
    x = [x alfabeto(ind)];
end
x