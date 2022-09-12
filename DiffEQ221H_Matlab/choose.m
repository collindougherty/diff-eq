function value = choose(n,m);
%compute "n choose m" ie n!/(m!(n-m)!)

if n >= m
    value = factorial(n)/(factorial(m)*factorial(n-m));
else
    value = 0
end

end