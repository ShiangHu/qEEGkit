function BSTstart(varargin)
% add brainstorm toolbox

if ispc
    addpath('E:\OneDrive - Neuroinformatics Collaboratory\Scripting\Toolbox\brainstorm\brainstorm3');
else
    addpath('/media/shu/hdd/toolbox/brainstorm3');
end

if nargin==0
    brainstorm
else
    brainstorm nogui;
end

end