%write code for rk4 solver to solve zombie-human model
function [y,t] = rk4_ndim(f,t0,T,y0,N);

h = (T-t0)/(N-1); %calculate and store the step size
t = linspace(t0,T,N); %A vector to store the time values
dimension=length(y0); %to measure the dimension of the initial value vector
y = zeros(dimension,N); %Initialize the Y vector
y(:,1)=y0; %first column of initial value matrix/start y at the initial value

for i = 1:(N-1)
    k1=h*f(t(i),y(:,i));
    k2=h*f(t(i)+(.5*h),y(:,i)+(.5*k1));
    k3=h*f(t(i)+(.5*h),y(:,i)+(.5*k2));
    k4=h*f(t(i)+h,y(:,i)+k3);
    y(:,i+1)=y(:,i)+(1/6)*(k1+(2*k2)+(2*k3)+k4);
end
%end of rk4 portion of code

%solver for zombie vs human model
%bR = 1; %setting birth rate
%Nd = 1; %setting rate of natural deaths
%Zd = 1; %setting rate of deaths from zombies
%Zb = 1; %setting rate of zombification
%Q  = 1; %setting rate of humans killing zombies
%Im = 1; %setting vaccination success rate
%Ki = 1; %setting vaccination mortality rate
%Zo = 1; %setting vaccination zombification rate

%start with 2nd order version to test
%where r1 represents humans and r2 represents zombies
%2Ord = @(t,r) [-(r1.*r2); (r1.*r2)]; %a very simple version with no human birth rate 
                                    %and guaranteed zombification when humans and zombies interact
%[r t] = rk4_ndim(2Ord,0,10,0,100); 
%plot(r(1,:),r(2,:));