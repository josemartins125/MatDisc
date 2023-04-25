function MLinear = criarMatriz(tamanho)
  #cria matriz em formato linear. ATENÇÃO: função adaptada apenas para os casos de 2x2, 3x3
  if(tamanho == 2)
    [a,b,c,d] = ndgrid(1:2,1:2,1:2,1:2);
    MLinear = [a(:), b(:), c(:), d(:)];
    
    for i=1:16
    %caracteristica homologica
      Mhomologica(i,:) = sort(hist(MLinear(i,:),2));
    end

    [u,v,w]=unique(Mhomologica, 'rows');

    Dados = [MLinear, (1:16)' Mhomologica w];
    MLinear';

    M2x2 = reshape(MLinear',2,2,16);
    % u guarda as classes possiveis (0 4 ; 1 3 ; 2 2)
    % v representa as primeiras vezes que cada classe aparece na matriz homologica
    % w guarda a categoria da classe homologica (1,2 ou 3)

    % Mhomologica(1,1) - guarda a 1 posicao da classe da 1a matriz
    % Mhomologica(1,2) - guarda a 2 posicao da classe da 1a matriz
    sortrows(Dados, 8)
    
    return
  endif

  if(tamanho == 3)
    [a, b, c, d, e, f, g, h, i] = ndgrid(1:3,1:3,1:3,1:3,1:3,1:3,1:3,1:3,1:3);
    MLinear = [a(:), b(:), c(:), d(:), e(:), f(:), g(:), h(:), i(:)];
    return
  endif
  
  if(tamanho == 4)
    [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p] = ndgrid(1:4,1:4,1:4,1:4,1:4,1:4,1:4,1:4,1:4,1:4,1:2,1,1,1,1,1);



    MLinear = [a(:), b(:), c(:), d(:), e(:), f(:), g(:), h(:), i(:), j(:), k(:), l(:), m(:), n(:), o(:), p(:)];
    return
  endif
  
  disp("So são aceites tamanhos de 2 ou 3")
  
end



