
clc;
clear;
close all;

%% Define two rectangular signals

s1 = [0,0,0,0,0,1,1,1,1,1,0,0,0,0,0];

s2 = [0,0,0,0,0,1,1,1,1,1,0,0,0,0,0];

%% Linear convolution using built-in function

y = conv(s1,s2);

%% Plot the signals

figure(1);

subplot(3,1,1);
stem(0:length(s1)-1,s1,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Rectangular Signal 1');
grid on;

subplot(3,1,2);
stem(0:length(s2)-1,s2,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Rectangular Signal 2');
grid on;

subplot(3,1,3);
stem(0:length(y)-1,y,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Result of Linear Convolution');
grid on;
