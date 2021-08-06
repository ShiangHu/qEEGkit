function outputfig=initpalos 
% Initializing the PALOS running environment

dpalos = 'E:\OneDrive - CCLAB\Scripting\Toolbox\PaLOS';

addpath(genpath(dpalos));

lsm(dpalos)

dtpath = 'E:\CCLAB\ash - qceeg\5 Quality Check';
addpath(genpath(dtpath)); % load data

outputfig = 'E:\CCLAB\ash - qceeg\4 HPD_atmg_rest\figure';

end
