function simulador()
   % Gera os dados X_i
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
   
   % Calcula os S_i
   for i = 1:3
      soma = 0;
      S{i} = [];
      for j = 1:500
         soma = soma + X{i}(j);
         S{i} = [S{i} soma];
      endfor
   endfor
   
   % Calcula os Y_i
   for i = 1:3
      Y{i} = [];
      for j = 1:500
         Y{i} = [Y{i} S{i}(j)/j];
      endfor
   endfor
   
   % Calcula os Y_i
   for i = 1:3
      Z{i} = [X{i}(1)];
      for j = 2:500
      somaParcial = X{i}(j-1) + X{i}(j);
         Z{i} = [Z{i} somaParcial/2];
      endfor
   endfor
   
   % Imprime os gráficos
   figure
   for i = 1:3
      subplot(3,3,i)      
      plot(N{i}, S{i}, 'k');
      xlabel("n");
      ylabel("Sn");
      title('Gráfico para Sn')
   endfor
  
   for i = 1:3
      subplot(3,3,i+3)      
      plot(N{i}, Y{i}, 'k');
      xlabel("n");
      ylabel("Yn");
      title('Gráfico para Yn')
   endfor 
   
   for i = 1:3
      subplot(3,3,i+6)      
      plot(N{i}, Z{i}, 'k');
      xlabel("n");
      ylabel("Zn");
      title('Gráfico para Zn')
   endfor 
   
endfunction