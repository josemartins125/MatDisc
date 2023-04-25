function isComutativa(MatrizLinear)

% recebe uma linha da matriz linear, transformamos para uma matriz quadrada e verifica a propriedade

[a b c] = size(MatrizLinear);

linhas = sqrt(b);
Matrix=reshape(MatrizLinear',linhas,linhas);

for x=1:linhas
    for y=1:linhas
        %comutativa
        Left = Matrix(x,y);
        Right = Matrix(y,x);
        
        if Left ~= Right
            disp([x, y Left Right]);
            disp("Matriz nao é comutativa")
            return
        endif
    end
end

disp("Matriz é comutativa")
Matrix