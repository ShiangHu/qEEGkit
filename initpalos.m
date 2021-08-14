function initpalos 
% Initializing the PALOS running environment

dpalos = 'E:\OneDrive - CCLAB\Scripting\Toolbox\PaLOS';

addpath(genpath(dpalos));

dref = 'E:\OneDrive - CCLAB\Scripting\Toolbox\RESTref\Unified-EEG-reference-rREST\unipolar_ref';
addpath(dref);

eeglabstart('');
end
