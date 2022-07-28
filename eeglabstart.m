function eeglabstart(varargin)
% add the essential EEGLAB paths
% Examples: 1. eeglabstart
%                  2. eeglabstart(''), eeglabstart(1), eeglabstart('nogui')
%
% Help eeglab

% Shiang Hu, Oct. 7, 2019

% st = dbstack;
% tool_dir = fileparts(which(st.file));

tool_dir = 'D:\OneDrive - CCLAB\Scripting\Toolbox';

eeglabpath = fullfile(tool_dir,'eeglab');
elocpath = [eeglabpath,filesep,'sample_locs'];
sptpath = fullfile(tool_dir,'sptkit');

addpath(eeglabpath,elocpath,sptpath);

% add the starting path of eeglab
if nargin == 0
    eeglab;
else % no gui pops up
    eeglab nogui;
end
% clc;
end

