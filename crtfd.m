function crtfd(ckfd)
	% create folder if not exist or recreate it if exist
    
if ~isfolder(ckfd)
    mkdir(ckfd);
else
    rmdir(ckfd,'s'), mkdir(ckfd);
end