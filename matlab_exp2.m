clc;
clear;
close all;

%% ---------- Basic Signals ----------

t = -10:0.05:10;

% Unit Impulse
impulse = zeros(1, length(t));
[~, idx] = min(abs(t));
impulse(idx) = 1;

% Unit Step
ustep = double(t >= 0);

% Unit Ramp
r = t .* ustep;

% Signum
s = sign(t);

figure(1);

subplot(2,2,1);
stem(t, impulse, 'filled', 'MarkerSize', 3);
title('Unit Impulse Signal');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -0.5 1.5]);
grid on;

subplot(2,2,2);
stairs(t, ustep, 'LineWidth', 1.5);
title('Unit Step Signal');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -0.5 1.5]);
grid on;

subplot(2,2,3);
plot(t, r, 'LineWidth', 1.5);
title('Unit Ramp Signal');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -1 10]);
grid on;

subplot(2,2,4);
stairs(t, s, 'LineWidth', 1.5);
title('Signum Function');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -1.5 1.5]);
grid on;


%% ---------- Complex Signals ----------

% Shifted Unit Steps
u_shift = double(t >= 2);
u_shift1 = double(t >= -2);

% Shifted Ramp r(t-2)
r_shift = (t - 2) .* u_shift;

% Time Scaling r(2t)
r_2t = (2*t) .* double(2*t >= 0);

% Time Reversal r(-t)
r_mt = (-t) .* double(-t >= 0);

figure(2);

subplot(2,3,1);
stairs(t, u_shift, 'LineWidth', 1.5);
title('Shifted Unit Step u(t-2)');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -0.5 1.5]);
grid on;

subplot(2,3,2);
stairs(t, u_shift1, 'LineWidth', 1.5);
title('Shifted Unit Step u(t+2)');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -0.5 1.5]);
grid on;

subplot(2,3,3);
plot(t, r_shift, 'LineWidth', 1.5);
title('Shifted Ramp r(t-2)');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -1 10]);
grid on;

subplot(2,3,4);
plot(t, r_2t, 'LineWidth', 1.5);
title('Time Scaling r(2t)');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -1 20]);
grid on;

subplot(2,3,5);
plot(t, r_mt, 'LineWidth', 1.5);
title('Time Reversal r(-t)');
xlabel('Time');
ylabel('Amplitude');
axis([-10 10 -1 10]);
grid on;
