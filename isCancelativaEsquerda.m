function isCancelativaEsquerda(MatrizLinear)

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


for x=1:linhas
    for y=1:linhas
    %cancelativaEsquerda
        mfinal(x,y) = Matrix(x,y);
    end
    mfinal(x,:);
    vetor;
    a = sort(mfinal(x,:),2);
    a;
    if(!isequal(a, vetor))
        disp("Não é cancelativa à esquerda")
        return
    endif
end

disp("É cancelativa à esquerda")
Matrix