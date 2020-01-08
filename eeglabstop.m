function eeglabstop
if ispc
    rmpath('E:\OneDrive - Neuroinformatics Collaboratory\Scripting\Toolbox\eeglab');
else
    rmpath('/media/shu/hdd/toolbox/eeglab14_1_2b');
end