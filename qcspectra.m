function [pro, rkr]= qcspectra(EEG,nw,fs,fm,varargin)
% Quality check of cross spectra
% Input
%       EEG: data (nc-nt-ns / nc-nt)
%       nw: time-halfbandwidth product
%       fs: sampling rate
%       fm: maximum frequency
%       loc --- channel position supported by readlocs
%       svpath
% Output
%         pro ---- proportion
%         rkr ---- [rank of the EEG waveforms, the power spectra and
%    crossspectr at 10Hz, mean correlation interchannels powers topomaps]

% Shiang Hu, Jan. 9, 2020

idx = EEG(:,1)~=0&~isnan(EEG(:,1));
[S,f,nss] = xspt(EEG(idx,:),nw,fs,fm);

% idxing and referencing
[nc,~,nf] = size(S);
n = nss*ones(1,nf);
pmax = 1; lmax = 50;

% CPC
[Lambda,Q] = CPCstepwise1(S,n,pmax,lmax);
Sd = tdiag(S);
pro = sum(abs(Lambda(1:pmax,:)),2)/sum(abs(Sd(:)));

% check if plot results
if nargin==6
    loc = varargin{1};
    svpath = varargin{2};
    
    figure
    % eigenvalues
    subplot(231), semilogy(real(Lambda')), xlim([min(f) max(f)]); xlabel('Freq'); title('Eigenvalues in log scale');
    subplot(234), plot(real(Lambda')), xlim([min(f) max(f)]); xlabel('Freq');title('Eigenvalues in nat scale');
    
    % proportion of components
    subplot(232), pareto(sum(abs(Lambda),2)./sum(abs(Lambda(:)))); title('Proportion of cumulated > 95% variance');
    t1 = cumsum(sum(abs(Lambda),2))/sum(abs(Lambda(:)));
    t2 = (sum(abs(Lambda),2))./sum(abs(Lambda(:)));
    subplot(235), plot(1:nc,t1,'.',1:nc,t2,'^'); legend({'CumPro','VarPro'}); xlim([1 pmax]); xlabel('Components');
    title('Proportion of individual components');
    
    % components
    subplot(233), imagesc(abs(Q)),xlabel('Components'), ylabel('Channels');
    title('Pattern of components');
    
    subplot(236);
    for i=1
        %     subplot(2,4,i)
        topoplot(abs(Q(:,i)),loc), title(num2str(i));
    end
    title('Pattern of 1st component');
    saveas(gcf,svpath);
end

% ouput other qc measures
nfc = 77; % cutting off at 30Hz
rou = triu(corr(log10(Sd(:,1:nfc))),1);
mr = sum(rou(:))./(nfc*(nfc-1)/2);
rkr = [rank(EEG(idx,:)), rank(Sd), rank(S(:, :, 25)), mr]; 
end