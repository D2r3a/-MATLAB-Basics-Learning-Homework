f = @(x) exp(x) * cos(x) - x^2;
a = 0;
b = 2;
epsilon = 1e-10;
while abs(b - a) > epsilon
    c = (a + b) / 2;
    if f(c) == 0
        break;
    elseif f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

result = c;
disp(result);
