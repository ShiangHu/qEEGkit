function lsm(parDir)
% list all the .m scripts in the 1st level subfolders

if nargin==0
    parDir=pwd;
end

files = dir(parDir);        % Get a list of all files and folders in this folder .
dirFlags = [files.isdir];      % Get a logical vector that tells which is a directory.
subDirs = files(dirFlags);     % Extract only those that are directories.

if ~isempty(dir([parDir,'\*.m']))
    [~,name] = fileparts(parDir);
    display(upper(name));
    ls(fullfile(parDir,'*.m'));
end

for i=4:numel(subDirs)       % ingnore .git
    if  ~isempty(dir(fullfile(parDir,subDirs(i).name,'*.m')))
        display(upper(subDirs(i).name));
        ls(fullfile(parDir,subDirs(i).name,'*.m'));
    end
end

display(parDir);
end