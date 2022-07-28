% riemannian distance of coherence matrices across frequencies

% coh calculated by xspt

clean;

nf = size(coh,3);
opt = {'riemann','kullback','logeuclid','opttransp','ld','euclid'};
dist_r = zeros(nf,nf,length(opt));

tl = strsplit(num2str(round((1:15:nf)/2.56,1)));

figure,
for j = 1:length(opt)
    subplot(2,3,j);
    for i = 1:nf
        dist_r(:,i,j) = distance_set(coh, coh(:,:,i), opt{j});
    end
    imagesc(abs(dist_r(:,:,j))); 
    set(gca,'xtick',1:15:nf,'xticklabel',tl,'ytick',1:15:nf,'yticklabel',tl);
    title(opt{j}); axis square; colorbar;
end