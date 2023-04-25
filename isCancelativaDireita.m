function isCancelativaDireita(MatrizLinear)

% recebe uma linha da matriz linear, transformamos para uma matriz quadrada e verifica a propriedade


[a b c] = size(MatrizLinear);

linhas = sqrt(b);
Matrix=reshape(MatrizLinear',linhas,linhas);

if(linhas == 2)
    vetor = [1 2];
endif

if(linhas == 3)
    vetor = [1 2 3];
endif


for y=1:linhas
    for x=1:linhas
    %cancelativaDireita
        mfinal(x,y) = Matrix(x,y);
    end
    a = sort(mfinal(:,y));
    a';
    vetor;
    if(!isequal(a', vetor))
        disp("Não é cancelativa à direita")
        return
    endif
end

disp("É cancelativa à direita")
Matrix