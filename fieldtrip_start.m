function fieldtrip_start

st = dbstack;
spt_path = fileparts(which(st.file));
tool_path = fullfile(spt_path,'../fieldtrip');

restoredefaultpath;
addpath(tool_path,spt_path);
ft_defaults;
end