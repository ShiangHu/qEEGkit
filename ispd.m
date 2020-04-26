function mark = ispd(X)
% ISPD determine if X is positive definite

% See also CHOL
% Shiang Hu, 8/6/2019

[p,q,r] = size(X);
if p~=q
    error('Input has to be a square matrix!');
else
    mark = zeros(r,1);
    for i=1:r
        mark(i) = ispdm(X(:,:,i));
    end
end

function mark=ispdm(xi)
[~,flag] = chol(xi);
eigv     = eig(xi);
if flag>0 || ~all(eigv>0) || min(eigv)<1E-7
    mark = false;
else
    mark = true;
end