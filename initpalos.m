function [stepnm,ext] = initpalos 
% Initializing the PALOS running environment

dpalos = 'D:\OneDrive - CCLAB\Scripting\Toolbox\PaLOS';

addpath(genpath(dpalos));

dref = 'D:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\Unified-EEG-reference-rREST\unipolar_ref';
addpath(dref);

eeglabstart('');

ext = {'_1O','_2C','_3F','_4L','_5H','_6E'};
stepnm = {'EEGOrig','EEGcrd','EEGfiltered','EEGICLabel','EEGHighvarred','EEGItpl'};


% to produce the old results
addpath('D:\CCLAB\ash - qceeg\5 Quality Check');
end
