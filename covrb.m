function [S_RB,S,rk] = covrb(data,nw,fs)
% Covariance regularization using the rao blackwell estimator to make it SPD
% Input
%   data --- nchannel by sl by ns
%     nw --- time-bandwidth product, 2, 2.5, 3, 3.5, 4
%     fs --- sampling frequency
% Output
%   S_RB --- regularized covariance
%       S    --- covariance estimated by multitaper method
%       rk   ---  nf*2, the rank of S, S_RB


% See paper: Sabbagh, et al. “Predictive Regression Modeling with MEG/EEG: 
% From Source Power to Signals and Cognitive States.” https://doi.org/10.1016/j.neuroimage.2020.116893.

% multitaper cross spectrum
[S, f] = xspt(data,nw,fs,30);
[nc,~,nf] = size(S);
S_RB = zeros(nc,nc,nf);

k = 2*nw-1;
I = eye(nc);
muv = zeros(nf,1);
% RB estimator

for i=1:nf
Si = S(:,:,i);
mu = trace(Si)/nc;
muv(i)=mu;

nom = trace(Si)^2-trace(Si*Si')/k;
den = (k+1)*(trace(Si*Si')-trace(Si)^2/nc);
rou = nom/den;

S_RB(:,:,i) = (1-rou)*Si+rou*mu*I;
end

rk = [trank(S),trank(S_RB)];
end