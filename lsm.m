function lsm(parDir,varargin)
% list all the .m scripts in the 1st level subfolders

if nargin==0
    parDir=pwd;
elseif nargin ==1
    ext = '*.m';
elseif nargin == 2
    ext = varargin{1};
end

files = dir(parDir);        % Get a list of all files and folders in this folder .
dirFlags = [files.isdir];      % Get a logical vector that tells which is a directory.
subDirs = files(dirFlags);     % Extract only those that are directories.

if ~isempty(dir([parDir,filesep,ext]))
    [~,name] = fileparts(parDir);
    display(upper(name));
    ls(fullfile(parDir,ext));
end

for i=4:numel(subDirs)       % ingnore .git
    if  ~isempty(dir(fullfile(parDir,subDirs(i).name,ext)))
        display(upper(subDirs(i).name));
        ls(fullfile(parDir,subDirs(i).name,ext));
    end
end

display(parDir);
end