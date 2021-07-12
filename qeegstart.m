function qeegstart
% initialize the environment and add a few toolbox for qeeg study

if ispc
rdplgpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\read PLG';
qeegpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\qeeg (andy version)\qeegp';
refpath = 'E:\CCLAB\BrainWorks - Ref utilities';
sphlfpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\sph lead field calculation';
else
rdplgpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/read PLG';    
qeegpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/qeeg (andy version)/qeegp';
refpath = '/home/shu/ExpanDrive/BrainWorks/BrainWorks - Documents/EEG reference/Ref utilities';   
sphlfpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/sph lead field calculation';
end

addpath(rdplgpath,qeegpath,refpath,sphlfpath);
eeglabstart('no gui');

clear; close all; clc; 
end