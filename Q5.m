% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 5
% Compute impulse response of system given in the previous question.

N = 40;
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
y = impz(num,den,N);
% Impulse response representation
stem(y);
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse response');
grid;