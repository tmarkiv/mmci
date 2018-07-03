%% Run the CMD MMB_settings
try
    graphics_toolkit fltk
catch
end

% Exercise 1- RW97 with Tayor rule 
cd('C:\Temp\Shared Ubuntu\mmci-cli-master')
cd MMB_OPTIONS
CMD_MMB(1,4,2,1)

% Exercise 2- RW97 and NK_CGG02 with Tayor rule 
cd('C:\Temp\Shared Ubuntu\mmci-cli-master')
cd MMB_OPTIONS
CMD_MMB(9,4,2,1)

%Exercise 2a- RW97 and NK_CGG02 with Tayor rule  print varainces
cd('C:\Temp\Shared Ubuntu\mmci-cli-master')
cd MMB_OPTIONS
CMD_MMB(9,4,4,1)

%Exercise 2b- RW97 and NK_CGG02 with Tayor rule  print varainces ,IRFs and ACF
cd('C:\Temp\Shared Ubuntu\mmci-cli-master')
cd MMB_OPTIONS
CMD_MMB(9,4,7,1)

% Exercise 3- NK_CGG02 with Tayor rule and GR Rules
cd('C:\Temp\Shared Ubuntu\mmci-cli-master')
cd MMB_OPTIONS
CMD_MMB(8,12,2,1)
 
 
 