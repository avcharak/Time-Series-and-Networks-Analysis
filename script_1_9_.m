%Script 1.9
%Descriptive statistics

prompt = 'Enter the time series: ';
Ts = input(prompt);

% Step 2: Check if the input is valid
if isempty(Ts) || ~isnumeric(Ts)
    error('Please enter a valid numeric vector.');
end

% Step 3: Calculate descriptive statistics
ts_mean   = mean(Ts);     % Mean value
ts_std    = std(Ts);      % Standard deviation
ts_var    = var(Ts);      % Variance
ts_median = median(Ts);   % Median
ts_max    = max(Ts);      % Maximum
ts_min    = min(Ts);      % Minimum

% Step 4: Display the results in the command window
fprintf('\n--- Descriptive Statistics ---\n');
fprintf('Mean: %.4f\n', ts_mean);
fprintf('Standard Deviation: %.4f\n', ts_std);
fprintf('Variance: %.4f\n', ts_var);
fprintf('Median: %.4f\n', ts_median);
fprintf('Maximum: %.4f\n', ts_max);
fprintf('Minimum: %.4f\n', ts_min);

% Step 5: Plot the time series
figure;
plot(Ts, '-o', 'LineWidth', 1.5);
hold on;

n = length(Ts); % number of data points

% Plot horizontal lines for descriptive statistics
plot([1 n], [ts_mean ts_mean], '--r', 'LineWidth', 1.2);     % Mean line
plot([1 n], [ts_median ts_median], '--g', 'LineWidth', 1.2); % Median line
plot([1 n], [ts_max ts_max], '--k', 'LineWidth', 1.2);       % Max line
plot([1 n], [ts_min ts_min], '--b', 'LineWidth', 1.2);       % Min line

% Step 6: Enhance the plot
title('Time Series & Descriptive Statistics');
xlabel('Time (or Index)');
ylabel('Value');
legend({'Time Series', 'Mean', 'Median', 'Max', 'Min'});
grid on;