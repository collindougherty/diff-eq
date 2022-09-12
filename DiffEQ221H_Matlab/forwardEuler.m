function [y,t] = forwardEuler(f,t0,T,y0,N)
%solve dy/dt = f(t,y), y(t0)=y0
%for t0 <= t <= T with N time steps
% Sample run:
%   [y approx, t] = forwardEuler(@(t,y) sin(t+y), 0.0, 5.0, 0.2, 30);
%   close all
%   plot(t,y_approx,'-o');

h = (T-t0)/(N-1); %calculate and store the step size
t = linspace(t0,T,N); %A vector to store the time values

y = zeros(1,N); %Initialize the Y vector

y(1) = y0; %start y at the initial value

for i = 1:(N-1)
    y(i+1) = y(i) + h*f(t(i),y(i)); %Update approximation y at t+h
end