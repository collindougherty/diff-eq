close all
beta = 8/3;sigma = 10;rho = 28;
LA = @(t,x)[sigma*(x(2)-x(1));x(1).*(rho-x(3))-x(2);x(1).*x(2)-beta*x(3)];
[x t]=rk4_n_dimensional(LA,0,30,[0;1;1],3000);
plot3(x(1,:),x(2,:),x(3,:));
