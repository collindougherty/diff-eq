function [y,t] = rk4(f,t0,T,y0,N)
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
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+(.5*h),y(i)+(.5*k1));
    k3=h*f(t(i)+(.5*h),y(i)+(.5*k2));
    k4=h*f(t(i)+h,y(i)+k3);
    y(i+1)=y(i)+(1/6)*(k1+(2*k2)+(2*k3)+k4);
end