function lsm(parDir,varargin)
% list all the .m scripts in the 1st level subfolders
%
% Input:
%           parDir --- parent path to list
%           varargin --- specifing the extension

% Shiang Hu, Oct 9, 2021

% default listing file extension
ext = '*.m';
if ~isempty(varargin)
    ext = varargin{1};
end

% listing parent path
if ~exist('parDir','var')
    parDir=pwd;
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