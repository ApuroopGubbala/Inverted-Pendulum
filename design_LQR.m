function [K, S, E] = design_LQR(A,B,Q,R)
% Designs an LQR state‐feedback controller u = -K x
% Q = state weighting, R = input weighting

% Solve Riccati
[K, S, E] = lqr(A, B, Q, R);
end
