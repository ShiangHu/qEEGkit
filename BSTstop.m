function BSTstop
% quite Brainstorm

pathCell = regexp(path, pathsep, 'split');
if isunix
    bstpath = '/media/shu/hdd/toolbox/brainstorm3';
    onPath = any(strcmp(bstpath, pathCell));
elseif ispc
    bstpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\brainstorm\brainstorm3';
    onPath = any(strcmpi(bstpath, pathCell));
end

if onPath&&brainstorm('status')
    
    brainstorm stop; clc;
    ext = genpath(fullfile(bstpath,'external'));
    toolbox = genpath(fullfile(bstpath,'toolbox'));
    rmpath(bstpath,ext,toolbox)
    
elseif onPath&&~brainstorm('status')
    
    ext = genpath(fullfile(bstpath,'external'));
    toolbox = genpath(fullfile(bstpath,'toolbox'));
    rmpath(bstpath,ext,toolbox)
    
end