function qeegstart
% initialize the environment and add a few toolbox for qeeg study

if ispc
rdplgpath = 'D:\OneDrive - CCLAB\Scripting\Toolbox\5-cubalab\qEEG misc\read PLG';
qeegpath = 'D:\OneDrive - CCLAB\Scripting\Toolbox\5-cubalab\qEEG misc\qeeg (andy version)\qeegp';
refpath = 'D:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\rREST\unipolar_ref';
sphlfpath = 'D:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\sph lead field calculation';
else
rdplgpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/read PLG';    
qeegpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/qeeg (andy version)/qeegp';
refpath = '/home/shu/ExpanDrive/BrainWorks/BrainWorks - Documents/EEG reference/Ref utilities';   
sphlfpath = '/home/shu/ExpanDrive/OneDrive Business/Scripting/Toolbox/sph lead field calculation';
end

addpath(rdplgpath,qeegpath,refpath,sphlfpath);
eeglabstart('no gui');

clean;
end