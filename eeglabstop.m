function eeglabstop

st = dbstack;
toolpath = fileparts(which(st.file));

if ispc
    eeglabpath = fullfile(toolpath,'..\eeglab');
elseif isunix
    eeglabpath = '/media/shu/hdd/toolbox/eeglab14_1_2b';
end
rmpath(genpath(eeglabpath));
end