close all
%solver for zombie vs human model
%t is 1 day per time unit
bR = .00004781; %setting birth rate (there are 360,000 births per day, so 360,000/7.53b per person per day)
Nd = .00002013; %setting rate of natural deaths (151,600 deaths per day so 151k/7.53b per person per day)
Zd = .02; %setting rate of deaths from zombies
Zb = .18; %setting rate of zombification (depends on how hungry they are)
Q  = .8; %setting rate of humans killing zombies (my zombies are really slow and dumb)
Im = .99; %setting vaccination success rate
Ki = .005; %setting vaccination mortality rate
Zo = .005; %setting vaccination zombification rate

ZvH = @(t,x)   [(-(Nd*x(1))-(Zd*x(1).*x(3))+(Im*bR.*(x(1)+x(2))));
               (-(Nd*x(2))-(Zd*x(2).*x(3))-(Zb*x(2).*x(3)));
               ((Zb*(x(2).*x(3)))-(Q*(x(1)+x(2)).*x(3))+((Zo*bR).*(x(1)+x(2))));
               ((Nd*x(1))+(Nd*x(2))+(Zd*x(1).*x(3))+(Zd*x(2).*x(3))+(Q*(x(1)+x(2)).*x(3))+(Ki*(x(1)+x(2))))];
           
%initial conditions--7.53 billion people currently in the world
%say .1% are immune, or .00753 billion
%and 99.9% are susceptible, or 7.52247 billion
%no initial zombies or dead
[x,t] = rk4_n_dimensional(ZvH,0,100,[.00753;7.52247;0;0],100000);

plot(t,x(1,:),'g')
hold on
plot(t,x(2,:),'b')
hold on
plot(t,x(3,:),'r')
%hold on
%plot(t,x(4,:),'k')