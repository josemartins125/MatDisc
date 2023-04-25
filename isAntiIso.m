function isAntiIso(MLinear,alpha,indMLinear)
   #recebe uma matriz NxN linearizada, um alpha e um índice de uma matriz na matriz principal criada
   #verifica iso e antiiso
   
    tmp = size(alpha);
    tam = tmp(2); #tamanho das matrizes
    
    i2s=@(x) MLinear(x,:);
    aLinear=i2s(indMLinear);
    aMatrix=reshape(aLinear',tam,tam);
    aAntiIsoMatrix = zeros(tam);
    aIsoMatrix = zeros(tam);
    alphainv(alpha)=1:tam;
    
    for k=1:tam
      for l=1:tam
        aAntiIsoMatrix(k,l)=alphainv(aMatrix(alpha(l),alpha(k)));
        aIsoMatrix(k,l)=alphainv(aMatrix(alpha(k),alpha(l)));
      endfor
    endfor
  
  
  aAntiIsoLinear = reshape(aAntiIsoMatrix,1,[]);
  aIsoLinear = reshape(aIsoMatrix,1,[]);
  
  
  
  disp("Matriz anti-isomorfica")
  indice1=find(ismember(MLinear,aAntiIsoLinear,'rows'))
  i2s(indice1) #matriz anti-isomorfica
  disp("Matriz isomorfica")
  indice2=find(ismember(MLinear,aIsoLinear,'rows'))
  i2s(indice2) #matriz isomorfica
  
end


