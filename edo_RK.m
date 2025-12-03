function edo_RK()

syms x y; 
f_string = input('Ingrese la funcion f(x,y): ', 's'); 
f_sym = str2sym(f_string);

n = input('Ingrese el numero de particiones: '); 
x0 = input('Ingrese el x0: '); 
y0 = input('Ingrese el  y0: '); 
xn = input('Ingrese la variable independiente, para la condicion inicial: '); 

f = matlabFunction(f_sym, 'Vars', [x y]);

h = (xn - x0)/n; 

y = []; 
x = []; 
x(1) = x0; 
y(1) = y0; 

for i = 2: n+1
    k1 = f(x(i-1), y(i-1)); 
    k2 = f(x(i-1) + (h/2), y(i-1) + (h*k1)/2); 
    k3 = f(x(i-1) + (h/2), y(i-1) + (h*k2)/2); 
    k4 = f(x(i-1) + h, y(i-1) + (h*k3)); 

    y(i) = y(i-1) + (h*(k1 + 2*k2 + 2*k3 + k4))/6; 
    x(i) = x(i-1) + h; 
end

disp(y(end)); 

end
