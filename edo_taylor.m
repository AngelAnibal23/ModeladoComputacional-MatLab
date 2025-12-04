function T = edo_taylor(f, x0, y0, xn, n)

syms xs ys;
f_sym = f(xs, ys);

fx = matlabFunction(diff(f_sym, xs), 'Vars', [xs ys]);
fy = matlabFunction(diff(f_sym, ys), 'Vars', [xs ys]);

h = (xn - x0)/n;

xi = x0;
yi = y0;

for i = 1:n
    fval = f(xi, yi);
    y2 = fx(xi, yi) + fy(xi, yi)*fval;

    yi = yi + h*fval + (h^2/2)*y2;
    xi = xi + h;
end

T = yi;
end
