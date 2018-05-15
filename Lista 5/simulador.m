function simulador()
   for i = 1:3
      N{i} = [];
      X{i} = [];
      for j = 1:500
         r = rand;
         if r > 0.5
            X{i} = [X{i} -1];
         else 
            X{i} = [X{i} 1];
         endif
         N{i} = [N{i} j];
      endfor
   endfor
   
   for i = 1:3
      soma = 0;
      S{i} = [];
      for j = 1:500
         soma = soma + X{i}(j);
         S{i} = [S{i} soma];
      endfor
   endfor
   
   for i = 1:3
      Y{i} = [];
      for j = 1:500
         Y{i} = [Y{i} S{i}(j)/j];
      endfor
   endfor
   
   for i = 1:3
      Z{i} = [X{i}(1)];
      for j = 2:500
      somaParcial = X{i}(j-1) + X{i}(j);
         Z{i} = [Z{i} somaParcial/2];
      endfor
   endfor
   
   figure
   subplot(3,3,1)       % add first plot in 2 x 1 grid
   plot(N{1}, S{1});
   xlabel("n");
   ylabel("Sn");
   title('Gráfico para Sn')
   subplot(3,3,2)
   plot(N{2}, S{2});
   xlabel("n");
   ylabel("Sn");
   title('Gráfico para Sn')
   subplot(3,3,3)
   plot(N{3}, S{3});
   xlabel("n");
   ylabel("Sn");
   title('Gráfico para Sn')

   subplot(3,3,4)       % add first plot in 2 x 1 grid
   plot(N{1}, Y{1});
   xlabel("n");
   ylabel("Yn");
   title('Gráfico para Yn')
   subplot(3,3,5)
   plot(N{2}, Y{2});
   xlabel("n");
   ylabel("Yn");
   title('Gráfico para Yn')
   subplot(3,3,6)
   plot(N{3}, Y{3});
   xlabel("n");
   ylabel("Yn");
   title('Gráfico para Yn')
   
   subplot(3,3,7)       % add first plot in 2 x 1 grid
   plot(N{1}, Z{1});
   xlabel("n");
   ylabel("Zn");
   title('Gráfico para Zn')
   subplot(3,3,8)
   plot(N{2}, Z{2});
   xlabel("n");
   ylabel("Zn");
   title('Gráfico para Zn')
   subplot(3,3,9)
   plot(N{3}, Z{3});
   xlabel("n");
   ylabel("Zn");
   title('Gráfico para Zn') 
   
endfunction