
clc;
clear;
close all;

%% 1. Sine and Cosine Wave

t = -2*pi:0.01:2*pi;

A = 2;          % Amplitude
f = 1;          % Frequency in Hz

x1 = A*sin(2*pi*f*t);
x2 = A*cos(2*pi*f*t);

figure(1);

subplot(2,1,1);
plot(t,x1,'b','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');
grid on;

subplot(2,1,2);
plot(t,x2,'r','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Cosine Wave');
grid on;


%% 2. Sinc Function

t1 = -10:0.01:10;

x3 = sin(pi*t1)./(pi*t1);
x3(t1 == 0) = 1;

figure(2);
plot(t1,x3,'r','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Sinc Function');
grid on;


%% 3. Triangular Waveform

t2 = -2:0.001:2;

x4 = 2*abs(2*(t2-floor(t2+0.5)))-1;

figure(3);
plot(t2,x4,'b','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Waveform');
grid on;


%% 4. Rectangular Pulse

t3 = -2*pi:0.01:2*pi;

x5 = double(abs(t3) <= 0.5);

figure(4);
plot(t3,x5,'b','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Rectangular Pulse');
grid on;


%% 5. Sawtooth Waveform

t4 = -2:0.001:2;

x6 = 2*(t4-floor(t4+0.5));

figure(5);
plot(t4,x6,'r','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Sawtooth Waveform');
grid on;


%% 6. Decaying Exponential Signal

t5 = 0:0.001:5;

a = -1;

x7 = exp(a*t5);

figure(6);
plot(t5,x7,'b','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Decaying Exponential Signal');
grid on;


%% 7. Increasing Exponential Signal

t6 = 0:0.001:5;

a = 1.5;

x8 = exp(a*t6);

figure(7);
plot(t6,x8,'r','LineWidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Increasing Exponential Signal');
grid on;
