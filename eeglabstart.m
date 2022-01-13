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
sptpath = fullfile(tool_dir,'sptkit');

elocpath = [eeglabpath,filesep,'sample_locs'];
addpath(eeglabpath,elocpath,sptpath);

% add the starting path of eeglab
if nargin == 0
    eeglab;
else % no gui pops up
    %     addpath(genpath(eeglabpath));
    eeglab nogui;
end
clc;
end

%     addpath(genpath(fullfile(eeglabpath,filesep,'functions')));
%     addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','doc'));
%     addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','t200_FileAccess'));
%     addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','t250_ArtifactPreProcessingQualityControl'));
%     rmpath (genpath(fullfile(eeglabpath,filesep,'functions','octavefunc')));
