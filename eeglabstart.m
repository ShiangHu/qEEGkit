function eeglabstart(varargin)
% add the essential EEGLAB paths
% Examples: 1. eeglabstart
%                  2. eeglabstart(''), eeglabstart(1), eeglabstart('nogui')
%
% Help eeglab

% Shiang Hu, Oct. 7, 2019

if ispc
    eeglabpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\eeglab';
    sptpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\sptkit';
    refpath = 'E:\CCLAB\BrainWorks - Ref utilities';
else
    eeglabpath = '/media/shu/hdd/toolbox/eeglab14_1_2b';
    sptpath = '/media/shu/hdd/toolbox/sptkit';
    refpath = '/home/shu/ExpanDrive/BrainWorks/BrainWorks - Documents/EEG reference/Ref utilities';
end

elocpath = [eeglabpath,filesep,'sample_locs'];
addpath(eeglabpath,elocpath,sptpath,refpath);

% add the starting path of eeglab
if nargin == 0
    eeglab;
else % no gui pops up
    addpath(genpath(fullfile(eeglabpath,filesep,'functions')));
    addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','doc'));
    addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','t200_FileAccess'));
    addpath(fullfile(eeglabpath,filesep,'plugins',filesep,'Biosig3.3.0',filesep,'biosig','t250_ArtifactPreProcessingQualityControl'));
    rmpath (genpath(fullfile(eeglabpath,filesep,'functions','octavefunc')));
end

clc;
end
