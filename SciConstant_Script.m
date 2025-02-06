clc,clear
keys     = {'q',...   
            'k_B',...  
            'k_Be',...
            'c',...
            'epsilon_0',...
            'mu_0',...
            'm_0',...
            'eV',...
            'h',...
            'h_bar',...
            'N_A',...
            'T_0',...
            'm_0',...
            'T_ice',...
            '1 kg'
            };    
value_unit    = {struct('name','elementary charge','value', 1.602176634*10^-19,'unit','C'),
                 struct('name','Boltzmann constant','value', 1.380649   *10^-23,'unit','J/K'),
                 struct('name','Boltzmann constant(Electronic)','value',8.617*10^-5,'unit','eV/K'),
                 struct('name','speed of light','value',2.998E8,'unit','m/s'),
                 struct('name','permittivity of free space/dielectric constant of vacuum','value',8.8541878188*10^-12,'unit','F/m'),
                 struct('name','permeability of free space','value',4*pi*10^-7,'unit','H/m'),
                 struct('name','electron rest mass','value',9.108e-31,'unit','kg'),
                 struct('name','electron volt','value', 1.602176634E-19,'unit','J'),
                 struct('name','Plank Constant','value',6.62607015E-34,'unit','J·s'),
                 struct('name','reduced Planck constant h_bar = h/(2pi)','value',1.054e-34,'unit','J·s or eV·s'),
                 struct('name','Avogadro constant','value',6.025E23,'unit','mol-1'),
                 struct('name','absolute zero','value',273.16,'unit','K'),
                 struct('name','free electron mass','value',9.10938356E-31,'unit','kg'),
                 struct('name','Temperature of ice','value',273.16,'unit','K'),
                 struct('name','1 kg = h/(6.62607015E-34 [kg·m2·s-1])','value',6.62607015E-34,'unit','h/(6.62607015E-34 [kg·m2·s-1])')
                 };
SciConstant = containers.Map(keys,value_unit);
% 模板：SciConstant('') = struct('name','','value', ,'unit','')
SciConstant('sigma') = struct('name','Stefan-Boltzmann Constant','value',5.67040040*10^(-8) ,'unit','J·s-1·m-2·K-4')

clearvars -except SciConstant
save("SciConstant.mat")
%% usage 
clc,clear
load("SciConstant.mat");
keys(SciConstant);%% display the keys of Scientific Constant
SciConstant('c').value
SciConstant('c').unit
SciConstant('c').name

SciConstant('mu_0').value
SciConstant('mu_0').unit
SciConstant('mu_0').name

SciConstant('sigma')