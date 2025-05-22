% Parameters
T_total = 50;          % total duration in seconds
f = 0.1;               % frequency in Hz (adjust as needed)
Fs = 100;              % sampling frequency in Hz
t = 0:1/Fs:T_total;    % time vector
amp = 40;

% Generate square wave
u = square(2*pi*f*t) ;  % amplitude: -1 to 1

% Optional: shift to 0/amp if desired
u_final = 0.5 * amp * (u) + 0.5 * amp;  % amplitude: 0 to 1

% Plot
figure;
plot(t, u_final, 'LineWidth', 1.5);
xlabel('Time [s]');
ylabel('Amplitude');
title('50-second Square Wave');
grid on;
