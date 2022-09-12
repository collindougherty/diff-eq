% MATH IN THE CITY TUTORIAL
 % you can plot many important statistical features
 % import a standard sample data set from matlab
 load carsmall
 
 subplot(2,2,1)
 histogram(MPG)
 title('Histogram for MPG')
 xlabel('MPG')
 ylabel('frequency')
 
rand
rand(1,5)
randi(1,5)
x = randi(10,1,50);

mean(x)
median(x)

a = 10; b = pi;
x = [0:1:10]; y = a*x + b + randn(size(x))*20;
figure; hold on; scatter(x,y)

[r, slope, intercept] = regression (x,y)

ex0806
isnan()