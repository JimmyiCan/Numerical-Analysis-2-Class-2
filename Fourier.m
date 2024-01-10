function f = Fourier(x,N)
global R
f = zeros(1,length(x));
y = zeros(1,N+1);
y(1) = 1/2*pi*R^2*1/2;
n = 2:N+1;
k = 1;
for i = x
    bn = R.*besselj(1,(n-1)*pi*R)./(n-1);
    y(n) = (R.*besselj(1,(n-1)*pi*R)./(n-1)).*cos((n-1)*pi*i);
    f(k) = sum(y);
    k = k + 1;
end

