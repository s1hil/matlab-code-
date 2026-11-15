
clc;
clear;
close all;

%% LINEARITY TEST

k = 3;
a = 2;
b = 5;

s1 = [1, 2, -3, 4];
s2 = [2, -2, 5, 4, 6];

% System definition: T(x) = exp(x)

y1 = exp(s1);
y2 = exp(s2);

% Equalize signal lengths using zero padding

l1 = length(s1);
l2 = length(s2);

L = max(l1,l2);

s11 = [s1, zeros(1,L-l1)];
s12 = [s2, zeros(1,L-l2)];

% Calculate both sides of linearity equation

out1 = exp(a*s11 + b*s12);

out2 = a*exp(s11) + b*exp(s12);

tol = 0.0001;

% Check linearity

if sum(abs(out2-out1)) < tol
    disp('The system is linear');
else
    disp('The system is nonlinear');
end

% Plot linearity test

figure(1);

subplot(2,2,1);
n_out1 = 0:length(out1)-1;
stem(n_out1,out1,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('T(a*s1 + b*s2)');
grid on;

subplot(2,2,2);
n_out2 = 0:length(out2)-1;
stem(n_out2,out2,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('a*T(s1) + b*T(s2)');
grid on;


%% TIME INVARIANCE TEST

s3 = [1, -2, -3, 4, 5, 6];

% Original system output

u = exp(s3);

% Delayed output

v = [zeros(1,k), u];

% Delayed input

delayed_input = [zeros(1,k), s3];

% System response to delayed input

w = exp(delayed_input);

% Check time invariance

if sum(abs(w-v)) < tol
    disp('The system is time invariant');
else
    disp('The system is time variant');
end

% Plot time invariance test

figure(2);

subplot(2,2,1);
n1 = 0:length(u)-1;
stem(n1,u,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Original Output T[x(n)]');
grid on;

subplot(2,2,2);
n2 = 0:length(v)-1;
stem(n2,v,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Delayed Output y(n-k)');
grid on;

subplot(2,2,3);
n3 = 0:length(delayed_input)-1;
stem(n3,delayed_input,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('Delayed Input x(n-k)');
grid on;

subplot(2,2,4);
n4 = 0:length(w)-1;
stem(n4,w,'filled');
xlabel('Samples');
ylabel('Amplitude');
title('T[x(n-k)]');
grid on;
