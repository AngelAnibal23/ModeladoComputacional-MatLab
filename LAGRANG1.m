function lagrange1()

n = input('Ingrese grado del polinomio de lagrange: ');

x = []; 
y = []; 

for i = 1 : n +1
    x(i) = input(sprintf('A%d = Ingrese el X: ', i));  
    y(i) = input(sprintf('A%d = Ingese el Y: ',i)); 
end

band = 1;

while band == 1 
    xr =input('Ingrese la abscisa intermedia que desea aproximar: '); 
    yr = 0;

    for i = 1 : n + 1

    j = 1; 
    NL = 1; 
    DL = 1; 

    while j <= n 
        if  (i ~= n) || (i ~= j) 
            if i == j 
                j = j + 1; 
            end
            NL = NL * (xr - x(j)); 
            DL = DL * (x(i) - x(j)); 
        end
        j = j + 1; 
    end

        yr = yr + ((NL/DL)*y(i)); 

    end

    disp(yr); 

     continuar = input('¿Desea continuar? (1 = sí, 0 = no): ');
    
    if continuar == 0
        band = 0; 
    end
end


end
