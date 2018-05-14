function simuladorX()
   for i = 1:3
      X{i} = [0];
      sum{i} = [0];
      for j = 1:500
         r = rand;
         if r > 0.5
            x = -1;
         else 
            x = 1;
         endif
         X{i} = [X{i} j];
         sum{i} = [sum{i} sum{i}(end)+x];
      endfor
   endfor
   plot(X{1}, sum{1}, X{2}, sum{2}, X{3}, sum{3})
endfunction