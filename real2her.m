function mat_out = real2her(mat_in)
% Convert real square matrix to hermition matrix or the other way around
% Use for storing the cross spectra matrices or recver cross spectra
% matrices
% Input
%         mat_in: Ne x Ne x Nf x Nc. whose dimensions maybe 3 or 4

% See com2her, her2com in qEEG toolbox
% Bosch, Andy, Mar. 22, 2019

[sz1,sz2,sz3] = size(mat_in);
nslice = numel(mat_in)/(sz1*sz2);
mat_in = reshape(mat_in,[sz1 sz2 nslice]);
mat_out = zeros(size(mat_in));

if isreal(mat_in)
    for s = 1:nslice
        slice_in = mat_in(:,:,s);
        tri = tril(slice_in,-1); % get the lower trianglar matrix
        mat_out(:,:,s) = triu(slice_in)+triu(slice_in,1)' +1i.*(tri'-tri);
    end
else
    for s = 1:nslice
        slice_in = mat_in(:,:,s);
        mat_out(:,:,s) = triu(real(slice_in))-tril(imag(slice_in),-1);
        disp('convert hermitian to real');
    end
end

mat_out = reshape(mat_out,[sz1 sz2 sz3 nslice/sz3]);
end