function lagrange()

n = input('Ingrese el numero de datos que va ingresar: '); 
xr =input('Ingrese la abscisa intermedia que desea aproximar: '); 

x = []; 
y = []; 

for i = 1 : n +1
    x(i) = input(sprintf('A%d = Ingrese el X: ', i));  
    y(i) = input(sprintf('A%d = Ingese el Y: ',i)); 
end

yr = 0; 

for i = 1: n +1
j = 1; 
NL = 1; 
DL = 1; 

while j <= n 
    if (i ~= n) || (i ~= j) 
        if i == j 
            j = j +1; 
        end
        NL = NL * (xr - x(j)); 
        DL = DL * (x(i)-x(j)); 
    end
    j = j+1;
end
    yr = yr + ((NL/DL) * y(i)); 

end

disp(yr); 

end
