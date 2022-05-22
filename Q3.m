% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 3
% Generate and plot following discrete-time signals:
% (a) unit sample sequence
% (b) complex exponential sequence
% (c) real exponent sequence
% (d) amplitude modulated sequence

clear all;
close all;
clc;

n1=0;
n2=10;

n=[n1:n2]; % discrete time
unitStep=[n>=0];
compExp = exp((2+4j)*n);
realExp = (0.6).^n;

figure; %unit step signal
stem(n,unitStep);
xlabel('n');ylabel('unitStep');axis([0,15,-5,5]);

figure; %complex exponential signal
subplot(2,2,1); stem(n,real(compExp));title('Real Part');xlabel('n');
subplot(2,2,2); stem(n,imag(compExp));title('Imaginary Part');xlabel('n');
subplot(2,2,3); stem(n,abs(compExp));title('Magnitude Part');xlabel('n');
subplot(2,2,4); stem(n,(180/pi)*angle(compExp));title('Phase Part');xlabel('n');

figure; %real exponential signal
stem(n,realExp);
xlabel('n');ylabel('realExp');

n = 0:100; m = 0.3; %generating the AM signal
fH = 0.1 ; fL = 0.01;
xH = sin(2*pi*fH*n);
xL = sin(2*pi*fL*n);
y = (1+m*xL).*xH;

figure; %amplitude modulated signal
stem(n,y); grid ;
xlabel('Time index n');
ylabel('Amplitude');
title('Amplitude Modulated Signal');



