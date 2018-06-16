function ex10()

    N = [];
    X = [];
    for j = 1:1000
       r = rand;
       if r > 0.5
          X = [X -1];
       else 
          X = [X 1];
       endif
       N = [N j];
    endfor
   
    soma = 0;
    S = [];
    for j = 1:1000
       soma = soma + X(j);
       S = [S soma];
    endfor
   
   plot(N, S);
   xlabel("n");
   ylabel("Sn");
   title('Gráfico para Sn')

endfunction