function isMedial(MatrizLinear)

% recebe uma linha da matriz linear, transformamos para uma matriz quadrada e verifica a propriedade

[a b c] = size(MatrizLinear);

linhas = sqrt(b);
Matrix=reshape(MatrizLinear',linhas,linhas);

for x=1:linhas
    for y=1:linhas
        for z=1:linhas
            for w=1:linhas
                %medial
                Left = Matrix(Matrix(x,y),Matrix(z,w));
                Right = Matrix(Matrix(x,z),Matrix(y,w));
                
                if Left ~= Right
                    disp([x, y, z, w Left Right]);
                    disp("Matriz não é medial")
                    return
                endif
            end
        end
    end
end

disp("Matriz é medial")
Matrix