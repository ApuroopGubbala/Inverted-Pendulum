function plotResults(t, x, u)
% Creates time‐response plots for states and control input

figure;
subplot(3,1,1);
plot(t, x(:,1), 'LineWidth',1.2);
ylabel('Cart Pos (m)');
grid on;

subplot(3,1,2);
plot(t, x(:,3), 'LineWidth',1.2);
ylabel('Pendulum Angle (rad)');
grid on;

subplot(3,1,3);
plot(t, u, 'LineWidth',1.2);
ylabel('Control Force (N)');
xlabel('Time (s)');
grid on;
end
