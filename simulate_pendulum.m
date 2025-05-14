function [t, x, u] = simulate_pendulum(A,B,K, x0, tfinal)
% Simulates the closed‐loop pendulum with LQR controller
% x0: 4×1 initial state, tfinal: simulation time

sys_cl = ss(A - B*K, B, eye(4), 0);
t = linspace(0, tfinal, 500);
[y, t, x] = lsim(sys_cl, zeros(size(t)), t, x0);

% Compute control effort u(t) = -K x(t)
u = -K * x';

% Transpose x so that each row is a state trajectory
x = x;
end
