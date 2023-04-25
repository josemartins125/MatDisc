function imprimeIsoAnti(MatrizLin)
  #gera matrizes de relação isomórifica, anti-isomórfica e a sua reunião (iso + anti-iso)
  #função apenas funciona para o caso de matrizes 2x2
  
  Matriz = reshape(MatrizLin',2,2,16);
  
  alpha=[2 1];
  alphainv(alpha)=1:2;

  Iso = zeros(16);
  Anti = zeros(16);

  for a = 1:16
    for b = 1:16
      A = Matriz(:,:,a);
      B = Matriz(:,:,b);
      countIso = 0;
      countAnti = 0;
      for i=1:2
        for j=1:2
             if( alpha(A(i,j)) == B(alpha(j),alpha(i)) )
               countAnti++;
             endif
             if( alpha(A(i,j)) == B(alpha(i),alpha(j)) )
               countIso++;
             endif
        end
      end
      
      if(countIso == 4) #verifica isomorfismo
        Iso(a,b) = 1;
      endif
      
      if(countAnti == 4) #verifica anti-isomorfismo
        Anti(a,b) = 1;
      endif
    end
  end
  Iso #mostra tabela de isomorfismos
  Anti #mostra tabela de antimorfismo
  AntiIso = Iso + Anti; #gera tabela de antimorfismo reunido com iso
  for a = 1:16
    for b = 1:16
      if(AntiIso(a,b) == 2)
        AntiIso(a,b) = 1;
      endif
    endfor
  endfor
  AntiIso
  ################################################  
end