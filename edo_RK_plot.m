function [X, Y] = edo_RK_plot(f, x0, y0, xn, n)

h = (xn - x0)/n;

X = zeros(1, n+1);
Y = zeros(1, n+1);

X(1) = x0;
Y(1) = y0;

xi = x0;
yi = y0;

for i = 1:n
    k1 = f(xi, yi);
    k2 = f(xi + h/2, yi + h*k1/2);
    k3 = f(xi + h/2, yi + h*k2/2);
    k4 = f(xi + h, yi + h*k3);

    yi = yi + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
    xi = xi + h;

    X(i+1) = xi;
    Y(i+1) = yi;
end
