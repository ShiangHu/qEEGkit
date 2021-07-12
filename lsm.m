function lsm(parentDir)
% list all the .m scripts in the 1st level subfolders 

    files = dir(parentDir);        % Get a list of all files and folders in this folder .
    dirFlags = [files.isdir];      % Get a logical vector that tells which is a directory.
    
    subDirs = files(dirFlags);     % Extract only those that are directories.


    if exist([parentDir,'*.m'])==2
    [~,name] = fileparts(parentDir);
	display(upper(name));
    ls(fullfile(parentDir,'*.m'));
    end

    for i=4:numel(subDirs)       % ingnore .git
    	display(upper(subDirs(i).name));
        ls(fullfile(parentDir,subDirs(i).name,'*.m'));
    end

    end