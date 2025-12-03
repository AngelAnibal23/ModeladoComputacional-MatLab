function C = Eddo_RK(f, x0, y0, xn, n)

h = (xn-x0)/n; 

xi = x0; 
yi = y0; 

for i = 1: n
    k1 = f(xi, yi); 
    k2 = f(xi + (h/2), yi + (h*k1)/2); 
    k3 = f(xi + (h/2), yi + (h*k2)/2); 
    k4 = f(xi + h, yi + (h*k3)); 
    
    yi = yi + (h*(k1 + 2*k2 + 2*k3 + k4))/6; 
    xi = xi + h; 
end

C = yi; 

end