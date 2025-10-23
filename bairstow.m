function bairstow()


n = input('Ingrese el grado del polinomio: ');  
a = []; 

for i = 1: n+1 
    a(i) = input(sprintf('A%d = Ingese el coeficiente: ',i)); 
end

num = input('Ingrese el numero maximo de iteraciones: '); 
er = 0.0001;

u = input('Ingrese el valor inicial de u: '); 
v = input('Ingrese el valor inicial de v: '); 

k = 1; 
j = 1; 
m = n; 
x = []; 

while n > 2
    
    if k == 100000000
        
        u = input('Ingrese el nuevo valor de u: '); 
        v = input('Ingrese el nuevo valor v: '); 
        k = 1;
    end
    
    b = zeros(1, n+1); 
    c = zeros(1, n+1);
    
    b(1) = a(1); 
    b(2) = a(2)+u*b(1); 
    
    for i = 3 : n+1 
        b(i) = a(i) + u*b(i-1) + v*b(i-2); 
    end
    
    c(1) = b(1); 
    c(2) = b(2)+u*c(1); 
    
     for i = 3 : n+1 
        c(i) = b(i) + u*c(i-1) + v*c(i-2); 
     end
    
     d = (c(n-2)*b(n+1) - b(n)*c(n-1))/(c(n-1)^2 - c(n)*c(n-1));
     e = (b(n)*c(n) - b(n+1)*c(n-1))/(c(n-1)^2 - c(n)*c(n-1));
     
     u = u + d;
     v = v + e; 
     
     if (max(abs([e,d]))) < er
     p = [1 -u -v]; 
     x = roots(p); 
     j = j +2; 
     n = n -2; 
     
     for i = 1 : n+1
        a(i) = b(i); 
     end
     k = 1; 
     else
         k = k +1; 
     end
end

if n > 1
    u = a(1); 
    v = a(2); 
    p = [1 -u -v]; 
    x = roots(p); 
else
    if n > 0
        x(j) = -b(1)/b(0);
    end
end

for i = 1 : m
    fprintf('\nLas raices son: \n');
    disp(x(i)); 
end
end
