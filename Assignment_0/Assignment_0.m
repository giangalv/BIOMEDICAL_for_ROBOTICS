% Comparing the plots with EMG, EEG and motion data plots we observe that,
% the first plot is a EEG, the second is a motion data and the last one is
% a EMG.
%% ASSIGNMENT 0 
% Demaria Claudio; Galvagni Gianluca; Enrico Piacenti; Manuel Delucchi;
% Import the data
A = importdata("Data_Assignment_0\data1.mat");
B = importdata("Data_Assignment_0\data2.mat");
C = importdata("Data_Assignment_0\data3.mat");
fAhz = 2000;
fBhz = 166;
fChz = 250;

figure(1);
t = (0:(length(A)-1)) / fAhz; % Time vector in seconds
plot(t,A);
title("EMG")
xlabel('TIME [s]')
ylabel('DATA')
grid on

figure(2);
t = (0:(length(B(1,:))-1)) / fBhz; % Time vector in seconds
plot(t, B(1,:), 'b', 'LineWidth', 2);
hold on; 
plot(t, B(2,:), 'r', 'LineWidth', 2); 
xlabel('TIME [s]')
ylabel('DATA')
title('MOTION DATA');
legend('data ONE', 'data TWO');
hold off;
grid on;

figure(3);
t = (0:(length(C)-1)) / fChz; % Time vector in seconds
plot(t,C);
title("EEG");
xlabel('TIME [s]')
ylabel('DATA')
grid on




