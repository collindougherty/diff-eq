%a program to compute the Nth fibonacci numbers
function value = fibonacci(N)

fibLast1=1
fibLast2=1
fib=1
for i=3:N
    fib=fibLast1+fibLast2
    fibLast2=fibLast1
    fibLast1=fib
end
display(fib)



