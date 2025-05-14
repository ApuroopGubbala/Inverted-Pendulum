% main_InvertedPendulum.m
% Entry point: set parameters, design controller, run simulation, plot

clear; clc; close all;

%% Physical parameters
M = 0.5;    % Cart mass (kg)
m = 0.2;    % Pendulum mass (kg)
l = 0.3;    % Pendulum length (m)
b = 0.1;    % Cart friction coefficient
g = 9.81;   % Gravity (m/s^2)

%% Linearize and get state‐space
[A,B,C,D] = linearize_Pendulum(M,m,l,b,g);

%% Design LQR controller
Q = diag([10, 1, 10, 1]);
R = 0.1;
[K,~,~] = design_LQR(A,B,Q,R);

%% Simulation initial condition
x0 = [0.0; 0; 0.1; 0];   % small initial angle

%% Run simulation
tfinal = 10;  % seconds
[t, x, u] = simulate_pendulum(A,B,K, x0, tfinal);

%% Plot results
plotResults(t, x, u);
