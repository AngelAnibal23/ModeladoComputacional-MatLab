function gpt()
    n = input('Ingrese el numero de datos que va ingresar: '); 
    xr = input('Ingrese la abscisa intermedia que desea aproximar: '); 

    x = zeros(1, n+1);
    y = zeros(1, n+1);

    for i = 1:n+1
        x(i) = input(sprintf('A%d = Ingrese el X: ', i));  
        y(i) = input(sprintf('A%d = Ingrese el Y: ', i)); 
    end

    yr = 0; 

    for i = 1:n+1
        L = 1;
        for j = 1:n+1
            if j ~= i
                L = L * (xr - x(j)) / (x(i) - x(j));
            end
        end
        yr = yr + L * y(i);
    end

    disp(yr);
end
