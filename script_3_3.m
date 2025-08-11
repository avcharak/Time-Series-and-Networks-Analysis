% script 3.3
% Lorenz system parameters
sigma = 10;
rho = 28;
beta = 8/3;
 
% Time span and initial conditions
tspan = [0, 50];                  % Time range for the solution
initial_conditions = [1, 1, 1];   % Initial conditions [x0, y0, z0]
 
% Define the Lorenz system as a set of differential equations
lorenz = @(t, X) [ ...
    sigma * (X(2) - X(1));          % dx/dt
    X(1) * (rho - X(3)) - X(2);     % dy/dt
    X(1) * X(2) - beta * X(3)       % dz/dt
];
 
% Solve the system using ode45
[t, XYZ] = ode45(lorenz, tspan, initial_conditions);
 
% Extract the x, y, and z components
x = XYZ(:,1);
y = XYZ(:,2);
z = XYZ(:,3);
 
% Plot the time series and the 3D phase-space (Lorenz attractor) side by side
figure;
 
% Plot the time series for x, y, and z components (left side)
subplot(1,2,1);               % Create a subplot (1 row, 2 columns, position 1)
plot(t, x, 'b', t, y, 'r', t, z, 'g');
xlabel('Time (t)');
ylabel('Values of x, y, z');
title('Time Series of Lorenz System');
legend('x(t)', 'y(t)', 'z(t)');
grid on;
 
% Plot the 3D phase-space (Lorenz attractor) (right side)
subplot(1,2,2);               % Create a subplot (1 row, 2 columns, position 2)
plot3(x, y, z, 'b');
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');
title('3D Phase Space of Lorenz System');
grid on;
axis tight;
view(3);                  
