function i_simpson()
syms x; 
f_string = input('Ingrese la funcion f(x): ', 's'); 
f_sym = str2sym(f_string);

x0 = input('Ingrese el valor de a: '); 
xn = input('Ingrese el valor de b: '); 
n = input('Ingrese el numero de particiones: '); 

f = matlabFunction(f_sym, 'Vars', x);

h = (xn - x0)/n; 

s1 = 0; 
s2 = 0; 

x = []; 

for i = 1: n -1 
    x(i) = x0 + i * h; 
    if (mod(i,2) == 0)
        s2 = s2 + f(x(i)); 
    else
        s1 = s1 + f(x(i)); 
    end
end

I = (h/3)*(f(x0) + 4*s1 + 2*s2 + f(xn)); 

disp(I); 

end
