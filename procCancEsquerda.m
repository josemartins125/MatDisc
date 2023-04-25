function procCancEsquerda(MatrizLinear)

% Recebe uma matriz linear, copia as suas linhas para um vetor n por n de 3 dimensões e verifica quais são cancelativas à esquerda devolvendo o indice da matriz

[a b c] = size(MatrizLinear);

linhas = sqrt(b);

if (linhas == 3)
    vetor = [1 2 3; 1 2 3; 1 2 3];
endif

if (linhas == 2)
    vetor = [1 2; 1 2];
endif

cont=0;
for i=1:a
    M3d(:,:,i)=reshape(MatrizLinear(i,:)',linhas,linhas);
    
    %cancelativa à esquerda
    a = sort(M3d(:,:,i),2);
    
    if(isequal(a, vetor))
        a;
        M3d(:,:,i);
        disp("indice da matriz")
        i
        cont++;
    endif
endfor

cont