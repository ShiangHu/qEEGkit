function newvar=loadnm(filename,varargin)
% load struct directly into a variable name

% useage: 
%           newvar = loadnm(fillname); 
%           newvar = loadnm(fillname,variablename);


if nargin==2
    varnm = varargin;
    var=load(filename,varnm);
else 
    var=load(filename);
    varnm=who('-file',filename);
end

newvar=getfield(var,varnm{1});
end