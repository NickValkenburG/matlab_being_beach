%%%%%% The MSDM system %%%%%%%%%%%%%%%
J1 = 5.8198*10.^-6;                 % Moment of Inertia of the first mass(kg m^2)
J2 = 4.769*10.^-6;                  % Moment of Inertia of the second mass(kg m^2)
k = 0.2656;                         % Torsional damping of the shaft () 
d = 3.125*10.^-5;                   % Torsional damping of the shaft (Nm/rad)
Km = 4.4*10.^-2;                    % Motor Constant (Nm/A)
b = 1*10.^-5;                       % Viscous friction (Nms/rad)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fill in the transfer functions
s = tf('s');
G = tf(Km.*[J2,(b+d),k],[J1*J2,(J1+J2)*(b+d),(J1+J2)*k+b^2+2*b*d,2*b*k,0]);                            % Fill in the transfer functions
D = ((s+1)2)/((s + 0.1) ∗ (s + 100));                            % Fill in the transfer functions

%% Fill in reference signal
% Step signal
Step_Time = 10;                      % Fill in the step time 
Step_Size = 40;                      % Fill in the step size

% Square signal
Square_Size = 0;                    % Fill in the input amplitude
Square_Frequency = 1;               % Fill in the input frequency
%% Fill in disturbance 
% Constant disturbance
Constant_Disturbance = 0;           % Fill in the disturbance value

% Sinusoidal disturbance
Sine_Disturbance = 0;               % Fill in the disturbance amplitude
Disturbance_Frequency = 1;          % Fill in the disturbance frequency

