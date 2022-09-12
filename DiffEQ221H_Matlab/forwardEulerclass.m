function [t,y] = forwardEulerclass(f,y0,T,t0,N)

y0=1; %initial condition
dt=0.1; %time step
t0=0; %initial time

T=5 %final time
nSteps = floor((T-t0)/dt)

t(1) = t0;
y(1) = y0;
for i = 1:nSteps
y(z+1)=y(z)+(dt*((t(z)-y(z)^2));
t(z+1)=t(z)+dt;
end

y

plot(t,y,'*')