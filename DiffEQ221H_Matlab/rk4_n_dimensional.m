%write code for rk4 solver to solve zombie-human model
function [y,t] = rk4_n_dimensional(f,t0,T,y0,N);

h = (T-t0)/(N-1); %calculate and store the step size
t = linspace(t0,T,N); %A vector to store the time values
y = zeros(length(y0),N); %Initialize the Y vector with the same length as that of the initial value vector
y(:,1)=y0; %first column of Y matrix is the initial value

for i = 1:(N-1)
    k1=h*f(t(i),y(:,i));
    k2=h*f(t(i)+(.5*h),y(:,i)+(.5*k1));
    k3=h*f(t(i)+(.5*h),y(:,i)+(.5*k2));
    k4=h*f(t(i)+h,y(:,i)+k3);
    y(:,i+1)=y(:,i)+(1/6)*(k1+(2*k2)+(2*k3)+k4);
end
%end of rk4 portion of code


%start with 2 dimensional system version to test
%where x1 represents humans and x2 represents zombies
% Sdim = @(t,x) [-(x(1).*x(2)); (x(1).*x(2))];          %a very simple version with no human birth rate 
%  [x t] = rk4_n_dimensional(Sdim,0,10,[38;2],100);     %and guaranteed zombification when humans and zombies interact
% plot(x(1,:),x(2,:))