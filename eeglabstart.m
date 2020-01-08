function eeglabstart(varargin)
% add the essential EEGLAB paths
% Examples: 1. eeglabstart
%                  2. eeglabstart(''), eeglabstart(1), eeglabstart('nogui')
%
% Help eeglab

% Shiang Hu, Oct. 7, 2019

if ispc
    eeglabpath = 'E:\OneDrive - Neuroinformatics Collaboratory\Scripting\Toolbox\eeglab';
    sptpath = 'E:\OneDrive - Neuroinformatics Collaboratory\Scripting\iEEG study\spt_est';
    refpath = 'E:\Neuroinformatics Collaboratory\BrainWorks - Ref utilities';
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
end

clc;
end
