function hasElementoNeutro(MatrizLinear)

% recebe uma matriz linear, transforma em matrix quadrada e verifica a propriedade

[a b c] = size(MatrizLinear);

linhas = sqrt(b);
Matrix=reshape(MatrizLinear',linhas,linhas);

for e=1:linhas
    count = 0;
    for x=1:linhas
          Left = Matrix(e,x);
          Right = Matrix(x,e);
            
          if Left == x
            if Right == x
              count++;
            endif
          endif
          
          if count == linhas
             disp("El neutro: ");
             disp(e);
             return
          endif
          
    end
end

      
disp("Esta matriz não tem elemento neutro.");

end
