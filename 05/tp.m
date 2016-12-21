%% Setup

img = imread('skin.jpg');
hsv = rgb2hsv(img);
h = hsv(:,:,1);
s = hsv(:,:,2);

%% Ex-1

h = ceil(99 * h) + 1;
s = ceil(99 * s) + 1;

% Não. Dependem do espaço RGB

%% Ex-2
%c_hs = zeros(100,100);

% for(i=1:size(img,1))
%     for(j=1:size(img,2))
%         c_hs(h(i,j),s(i,s)) = c_hs(h(i,j),s(i,s)) + 1; 
%     end
% end

for h_i = 1:100
    for s_i = 1:100
        c_hs(h_i, s_i) = sum(sum((h==h_i)&(s==s_i)));
    end
end    

% figure
p_hs = c_hs/sum(sum(c_hs));
% mesh(p_hs)
% xlabel('s');
% ylabel('h');
% title('Probabilidade Conjunta');

%% Ex-3
pm_s = sum(p_hs,1);
pm_h = sum(p_hs,2);

% figure
% subplot(2,1,1)
% plot(1:100, pm_h);
% xlabel('h');
% subplot(2,1,2)
% plot(1:100, pm_s);
% xlabel('s');
% title('Probabilidades Marginais');

%% Ex-4

% figure()
p_HS = pm_h.*pm_s;
% % mesh(p_HS)
% xlabel('s');
% ylabel('h');
% title('ProbabilidadeConjunta (se independentes)');
% hold on
% xoux = 1:100;
% youx = 100*ones(1,100);
% % plot3(xoux,youx,pm_s*0.1); % scale factor
% % plot3(youx,xoux,pm_h*0.1); % scale factor


%% Ex-5
pc_h = cumsum(pm_h);
pc_s = cumsum(pm_s);
pc_hs = pc_h.*pc_s;

indh1 = find(pc_h>=0.0,1,'first');
indh2 = find(pc_h>=0.7,1,'first');

inds1 = find(pc_s>=0.0,1,'first');
inds2 = find(pc_s>=0.7,1,'first');

img = imread('musk.jpg');
hsv = rgb2hsv(img);
h = hsv(:,:,1);
s = hsv(:,:,2);
h = ceil(99 * h) + 1;
s = ceil(99 * s) + 1;

detector(h,s,[indh1 indh2],[inds1 inds2])
figure
imshow(img)
