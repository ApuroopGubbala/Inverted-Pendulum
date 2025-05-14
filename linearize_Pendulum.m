function [A,B,C,D] = linearize_Pendulum(M,m,l,b,g)
% Returns the linearized state‐space matrices of the inverted pendulum

% States: x = [cart pos; cart vel; pendulum angle; pendulum ang vel]
% Input:  F (force on cart)

% Build linearized matrices
A = [0      1           0               0;
     0  -b/(M+m)   (m*g)/ (M+m)         0;
     0      0           0               1;
     0  -b*l/(M*l^2+m*l^2)   -g*(M+m)/(M*l^2+m*l^2)   0];

B = [0;
     1/(M+m);
     0;
     l/(M*l^2 + m*l^2)];

C = eye(4);   % full‐state output
D = zeros(4,1);
end
