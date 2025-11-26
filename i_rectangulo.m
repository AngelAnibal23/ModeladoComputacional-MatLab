function i_rectangulo()
syms x; 
f_string = input('Ingrese la funcion f(x): ', 's'); 
f_sym = str2sym(f_string);

x0 = input('Ingrese el valor de a: '); 
xn = input('Ingrese el valor de b: '); 
n = input('Ingrese el numero de particiones: '); 

f = matlabFunction(f_sym, 'Vars', x);

h = (xn - x0)/n; 

s = 0;  

x = []; 
x(1) = x0; 


for i = 1: n -1 
    s = s + f(x(i));
    x(i+1) = x0 + (i+1)*h; 
end

I = (h*s); 

disp(I); 

end
