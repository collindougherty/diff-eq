% function [] = eulerError()
clear all;

N=10;
t0=0;
T=5;

y0=1.0;
v=zeros(101,1);


for N=10:1:1000
t = linspace(t0,T,N);
y_exact=2./(2+t.^2);
y_approx=forwardEuler(@(t,y)-t*y^2,t0,T,y0,N);

error=max(abs(y_exact-y_approx));
for i=N
    v(i)=error;
end

    %for 
    %sum(10:10:1000(error))
end

    loglog(v)
%end
%sum(error)
%error
%error=error0+

% for N:100;
%     resolution=resolution+10;
% end

    