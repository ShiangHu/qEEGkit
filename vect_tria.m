function vect = vect_tria(cm)
% Concatenate the unpper trianglar matrix of connectivity matrix into vector 
% Input
%          cm --- [nc-nc-nf] connectivity matrix
%Output
%          vect --- nc*(nc-1)/2 - nf

[nc,~,nf] = size(cm);

ind = repmat(triu(true(nc),1),[1,nf]);
vect = cm(ind);

vect = reshape(vect, [nc*(nc-1)/2, nf]);
end