function euler()

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

for i = 2: n
    y(i) = y(i-1) + h*f(x(i-1), y(i-1)); 
    x(i) = x0 + (i*h); 
end

disp(y(n)); 


end
