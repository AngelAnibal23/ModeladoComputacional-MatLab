function edo_heun()

syms x y; 
f_string = input('Ingrese la funcion f(x,y): ', 's'); 
f_sym = str2sym(f_string);

n = input('Ingrese el numero de particiones: '); 
x0 = input('Ingrese el x0: '); 
y0 = input('Ingrese el  y0: '); 
xn = input('Ingrese la variable independiente, para la condicion inicial: '); 

f = matlabFunction(f_sym, 'Vars', [x y]);

h = (xn - x0)/n; 
x = []; 
y = []; 
yp = []; 

x(1) = x0; 
y(1) = y0; 

for i = 1 : n 
    yp   = y(i) + h * f(x(i), y(i));

    x(i+1)   = x(i) + h; 
    y(i+1) = y(i) + (h/2)*( f(x(i), y(i)) + f(x(i+1), yp) );
end

disp(y(n)); 

end
