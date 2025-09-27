%% Hydrocracking Model Initializations and Parameters

% Reactor parameters
V_liq   = 1.0;        % m^3 liquid volume
V_gas   = 0.1;        % m^3 gas headspace volume
R       = 8.314;      % J/mol-K
T0      = 600;        % K (initial reactor temperature)

%% Kinetics w/ Arrhenius
k0      = 1e6;        % 1/s, pre-exponential factor
Ea      = 8e4;        % J/mol, activation energy

%% Hydrogen parameters
F_H2in  = 1;        % mol/s hydrogen inflow
alpha   = 0.5;        % hydrogen reaction order
Pset    = 1e5;        % Pa, pressure setpoint
tau     = 1;          % s, vent response time
kvent   = V_gas / (R*T0*tau);   % mol/s/Pa, vent coefficient

% Initial hydrogen moles in gas phase (PV=NRT)
nH2_0   = Pset * V_gas / (R*T0);

%% Feed concentrations
CH0     = 1000;       % mol/m^3 heavy hydrocarbon
CM0     = 0;          % mol/m^3 medium
CL0     = 0;          % mol/m^3 light

%% Thermal parameters
rhoCp   = 4e6;        % J/m^3-K (effective density*heat capacity)
U       = 500;        % W/m^2-K (Heat transfer coefficient)
A       = 5;          % m^2 heat exchange area
T_cool  = 550;        % K coolant temperature
dHrxn   = -8e4;       % J/mol, enthalpy of reaction 

%% Initial condition vector
% [CH, CM, CL, nH2, T]
x0 = [CH0; CM0; CL0; nH2_0; T0];

%% Energy balance parameters
rhoCp   = 4.0e6;   % J/m^3-K
V_liq   = 1.0;     % m^3 
Qmax    = 2e6;     % J/s

% Heat of reaction (exothermic)
dHrxn   = -8e4;    % J/mol

% Temperature setpoint
Tset    = 600;     % K

%% PID gains
Kp_T = 5e3;       % proportional gain
Ki_T = 1e3;       % integral gain
Kd_T = 0;         % derivative gain

