function i_trapecio()

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


for i = 1: n -1
    x(i) = x0 + i * h; 
    s = s + f(x(i)); 
end

I = (h/2) * (f(x0) + 2*s + f(xn)); 

disp(I); 

end
