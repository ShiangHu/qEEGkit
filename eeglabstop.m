function eeglabstop
if ispc
    eeglabpath = 'E:\OneDrive - CCLAB\Scripting\Toolbox\eeglab';
elseif isunix
    eeglabpath = '/media/shu/hdd/toolbox/eeglab14_1_2b';
end
rmpath(eeglabpath);
end