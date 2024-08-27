function y = funcion1(x)

% if condicion
% codigo
% end

n = length(x);
y = zeros(1, n);

for i = 1:n % i = 1, 2, ..., n 
    if x(i) <= -2
        y(i) = x(i) - 1;
    elseif -2 < x(i) && x(i) < 0
        y(i) = 1 - x(i) ^ 2; 
    else
        y(i) = -1 / (x(i) + 1);
    end
end

end