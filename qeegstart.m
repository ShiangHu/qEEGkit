function qeegstart
% initialize the environment and add a few toolbox for qeeg study

if ispc
rdplgpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\qEEG misc\read PLG';
qeegpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\qEEG misc\qeeg (andy version)\qeegp';
refpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\rREST\unipolar_ref';
sphlfpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\sph lead field calculation';
eeglabstart('no gui');
clc;clear;close all;
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