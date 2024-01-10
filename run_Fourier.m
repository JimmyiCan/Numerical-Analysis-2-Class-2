function run_Fourier()
global R
R = 1/2;
x = linspace(-1, 1, 1e2);
disp(size(x)) % 1 100
i = 1;
f = zeros(4,length(x));
for N = [1 5 25 125]
    f(i,:) = Fourier(x,N);
    i = i + 1;
end
g = zeros(1,length(x));
for t = 1:length(x)
    if x(t) >= -R && x(t) <= R
        g(t) = R*sqrt(1-(x(t)^2/R^2));
    end
end
k = 1;
for N = [1 5 25 125]
    err(k) = sqrt(1/N*sum((f(k,:) - g).^2));
    k = k+1;
end
disp(err)
plot(x,g,'o',x,f(1,:),x,f(2,:),x,f(3,:),x,f(4,:))
legend('Original','N = 1','N = 5','N = 25','N = 125')
xlim([-1 1])
ylim([-0.1 0.6])


    