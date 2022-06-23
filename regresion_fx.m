%3
orden = 5;
A = ones( orden + 1, orden + 1);  % (n+1)*(n+1)
B = ones(orden +1 , 1);

x = [0 2.3 4.9 9.1 13.7 18.3 22.9 27.2];
y = [22.8 22.8 22.8 20.6 13.9 11.7 11.1 11.1];

for fila = 1:orden+1   
  for columna = 1:orden+1 
        A(fila, columna) = sum(x.^(fila-1 + columna-1));   % A
  end 
  
  B( fila, 1 ) =  sum(x.^(fila -1).*y);
end 

A
B

X = inv(A)*B
