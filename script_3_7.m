% script 3.7
% Generate surrogate time series (Random Phase or Fourier
% Transform)

% Original time series (example: a sine wave with noise)
N = 1000; % Length of the time series
t = linspace(0, 10, N); % Time vector
original_series = sin(2 * pi * 1 * t) + 0.2 * randn(1, N);

% Parameters for surrogate generation
num_surrogates = 10; % Number of surrogate series to generate
surrogate_series = zeros(num_surrogates, N);

% Generate surrogates using the Random Phase Fourier Transform method
for s = 1:num_surrogates
    % Step 1: Fourier Transform of the original series
    fft_original = fft(original_series);
    magnitude = abs(fft_original);
    phase = angle(fft_original);

    % Step 2: Add random phase to the original phase
    random_phase = 2 * pi * rand(1, N) - pi; % Uniform random phase in [-pi, pi]
    new_phase = phase + random_phase;

    % Step 3: Construct surrogate in Fourier domain
    surrogate_fft = magnitude .* exp(1i * new_phase);

    % Step 4: Inverse FFT to get the surrogate time series
    surrogate_series(s, :) = real(ifft(surrogate_fft));
end

% Plot original series and surrogates
figure;
subplot(2, 1, 1);
plot(t, original_series, 'b', 'LineWidth', 1.5);
title('Original Time Series');
xlabel('Time'); ylabel('Amplitude'); grid on;

subplot(2, 1, 2);
hold on;
for s = 1:num_surrogates
    plot(t, surrogate_series(s, :), 'LineWidth', 1);
end
title('Surrogate Time Series');
xlabel('Time'); ylabel('Amplitude'); grid on;
hold off;
