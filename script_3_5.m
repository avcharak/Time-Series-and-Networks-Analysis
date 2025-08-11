% script 3.5
% Parameters for the Lorenz system
sigma = 10;           % Parameter sigma
rho = 28;             % Parameter rho
beta = 8/3;           % Parameter beta
 
% Time span and initial conditions
tspan = [0, 50];                    % Time range for the solution
initial_conditions = [1, 1, 1];     % Initial values [x0, y0, z0]
 
% Define the Lorenz system of differential equations
lorenz_system = @(t, X) [ ...
    sigma * (X(2) - X(1));          % dx/dt
    X(1) * (rho - X(3)) - X(2);     % dy/dt
    X(1) * X(2) - beta * X(3)       % dz/dt
];
 
% Solve the Lorenz system using ode45
[t, XYZ] = ode45(lorenz_system, tspan, initial_conditions);
 
% Extract the x, y, and z components of the solution
x = XYZ(:,1);
y = XYZ(:,2);
z = XYZ(:,3);
 
% Plot the time series for each variable figure;
 
subplot(3,1,1);            % Plot for x(t)
plot(t, x, 'b');
xlabel('Time (t)');
ylabel('x(t)');
title('Lorenz System - Time Series for x(t)');
grid on;
 
subplot(3,1,2);            % Plot for y(t)
plot(t, y, 'r');
xlabel('Time (t)');
ylabel('y(t)');
title('Lorenz System - Time Series for y(t)');
grid on;
 
subplot(3,1,3);            % Plot for z(t)
plot(t, z, 'g');
xlabel('Time (t)');
ylabel('z(t)');
title('Lorenz System - Time Series for z(t)');
grid on;
 
% 3D Plot of the Lorenz attractor
figure;
plot3(x, y, z, 'b');
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');
title('Lorenz Attractor in 3D Phase Space');
grid on;
view(3);  % Set a 3D view angle for better visualization

