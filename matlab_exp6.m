clc; 
clear all; 
close all; 
T = 2*pi; %period 
t= -pi:0.0001:pi; 
N =20; %No of harmonies 
u = zeros(size(t)); 
for k = 1:2:N 
u = u+(4/pi)*(1/k)*sin(k*t);%y= 4h/pi∑ n=1,3,5 to ∞ 1/n sin(nwt) 
end 
subplot(2,1,1); 
plot(t,u); 
title("Fourier Series Approximation Of Square Wave"); 
xlabel("Time(s)"); 
ylabel("Amplitude"); 
grid on; 
for k = 1:2:N 
A(k) = (4/(k*pi)); 
end 
x_axis = 1:length(A); 
subplot(2,1,2); 
stem(x_axis,A); 
title('Theoretical Amplitude Spectrum'); 
xlabel('Harmonic Number (k)'); 
ylabel('Amplitude'); 
grid on; 
