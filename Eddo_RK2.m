function R = Eddo_RK2(f, x0, y0, xn, n)

h = (xn - x0) / n;

xi = x0;
yi = y0;

for i = 1:n
    k1 = f(xi, yi);
    k2 = f(xi + h/2, yi + (h*k1)/2);

    yi = yi + h*k2;
    xi = xi + h;
end

R = yi;

end
