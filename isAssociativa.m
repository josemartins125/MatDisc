function isAssociativa(MatrizLinear)

% recebe uma linha da matriz linear, transformamos para uma matriz quadrada e verifica a propriedade

[a b c] = size(MatrizLinear);

linhas = sqrt(b);
Matrix=reshape(MatrizLinear',linhas,linhas);

for x=1:linhas
    for y=1:linhas
        for z=1:linhas
            %associativa
            Left=Matrix(x,Matrix(y,z));
            Right=Matrix(Matrix(x,y),z);
            
            if Left ~= Right
                disp([x, y, z, Left Right]);
                disp("Matriz não é associativa")
                return
            endif
        end
    end
end

disp("Matriz é associativa")
Matrix