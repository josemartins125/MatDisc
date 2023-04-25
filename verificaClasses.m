function verificaClasses(MLinear)
  #dada uma matriz, � verificada a caracteristica homol�gica de cada matriz
  #e s�o distinguidas num vetor de contadores de cada classe
  
  i2s=@(t) MLinear(t,:);           %tempo que demoram as propriedades no relatório;
  
  [a b c] = size(MLinear); %
  linhas = sqrt(b); #tamanho das matrizes (2 ou 3) %
  
  for i=1:(size(MLinear,1)) %
    Mhomologica(i,:)=sort(hist(MLinear(i,:),linhas)); %
  endfor
  
  [u,v,w]=unique(Mhomologica,'rows'); # matriz com possibilidades de homologia dividido em classes

    %u guarda as classes possiveis (0 4 ; 1 3 ; 2 2)
    %v representa as primeiras vezes que cada classe aparece na matriz homologica
    %w guarda a categoria da classe homologica (1,2 ou 3)

  tamClasses = size(u,1); %

  vetorContaHomologicas = zeros(1,tamClasses); %

  for i=1:(size(MLinear,1))
    x=i2s(i); #devolve matriz no indice passado por parametro
    betaX = sort(hist(x,linhas)); #devolve caracteristica homologica da matriz x
    z=find(ismember(u,betaX,'rows')); #indice da matriz beta em u
    vetorContaHomologicas(z)++;  
  endfor

  vetorContaHomologicas
  disp("Classes: ") %disp das classes;
  disp(u)
  
end



