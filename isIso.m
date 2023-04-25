function isIso(MLinear,alpha,indMLinear)
   #recebe uma matriz NxN linearizada, um alpha e um índice de uma matriz na matriz principal criada
    
    tmp = size(alpha);      
    tam = tmp(2);           #tamanho das matrizes
    
    i2s=@(x) MLinear(x,:);
    aLinear=i2s(indMLinear);
    aMatrix=reshape(aLinear',tam,tam);
    aIsoMatrix = zeros(tam);
    alphainv(alpha)=1:tam;
    
    for k=1:tam
      for l=1:tam
        aIsoMatrix(k,l)=alphainv(aMatrix(alpha(k),alpha(l)));
      endfor
    endfor
  
  
    aIsoLinear = reshape(aIsoMatrix,1,[]);
    indice=find(ismember(MLinear,aIsoLinear,'rows'))
    i2s(indice)
  
end



