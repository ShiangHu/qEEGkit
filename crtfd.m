function crtfd(ckfd)
	% create folder if not exist or recreate it if exist
if isfolder(ckfd)
    rmdir(ckfd,'s'),
else
    mkdir(ckfd);
end
end