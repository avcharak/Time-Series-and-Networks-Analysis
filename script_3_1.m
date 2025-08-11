% script 3.1
%Time series for a simple harmonic oscillator
t = 0:0.01:10;               % Time vector (0 to 10 seconds with 0.01s intervals)
omega = 2*pi;                % Angular frequency (1 Hz)
x = sin(omega*t);            % Position of the harmonic oscillator
 
% Choose the time delay (tau)
tau = 10;  % Example time delay (adjustable)
 
% Create the 3D phase-space (state space reconstruction)
X1 = x(1:end-2*tau);         % Position at time t
X2 = x(1+tau:end-tau);       % Position at time t+tau
X3 = x(1+2*tau:end);         % Position at time t+2*tau
 
% Plot the time series and the 3D phase-space side by side
figure;
 
% Plot time series of position (left side)
subplot(1,2,1);              % Create a subplot (1 row, 2 columns, position 1)
plot(t, x, 'b');
xlabel('Time (t)');
ylabel('Position (x)');
title('Time Series of Harmonic Oscillator');
grid on;
 
% Plot the 3D phase-space (cycle plot) (right side)
subplot(1,2,2);              % Create a subplot (1 row, 2 columns, position 2)
plot3(X1, X2, X3, 'r');
xlabel('x(t)');
ylabel('x(t+ô)');
zlabel('x(t+2ô)');
title('3D Phase Space of Harmonic Oscillator');
grid on;
axis equal;
view(3);                     % Set 3D view angle


