function value = factorial(N);
%a function to calculate the factorial of N

if N<0
    error('INPUT MUST BE A POSITIVE INTEGER')
elseif N == 0
    value = 1
else
    value = 1
    for i = 1:N
        value = value*i
    end
end

end


