tam = 3;                    #define tamanho de matrizes a serem criadas (apenas estão preparados os casos 2 ou 3)
MLinear = criarMatriz(tam); #cria matriz 2x2 ou 3x3

verificaClasses(MLinear)   #demora algum tempo a calcular para as matrizes 3x3 (~2min)


isComutativa(MLinear(1,:));   #verificamos as propriedades comutativa, associativa,    
isAssociativa(MLinear(1,:));  #medial, cancelativa à esquerda e cancelativa à direita para uma matriz linear
isMedial(MLinear(1,:));       #passada por parâmetro. (Neste exemplo usámos a 1a matriz linear existente em MLinear)

isCancelativaEsquerda(MLinear(1,:));
isCancelativaDireita(MLinear(1,:));
hasElementoNeutro(MLinear(1,:));


MPerms = perms(1:tam); #perms gera matriz com possibilidades de transformação das matrizes
alpha = MPerms(2,:);   #cada linha de MPerms é uma permutação possível (alpha), para os testes abaixo
indice = 10;           #escolhemos a linha 2 de MPerms como permutação e o índice da matriz 10 em MLinear


isIso(MLinear,alpha,indice);     #verifica se existe alguma matriz isomórfica aquela que é passada na função
isAntiIso(MLinear,alpha,indice); #verifica se existe alguma matriz isomórfica ou antiisomórfica 
                                 #aquela que é passada na função


imprimeIsoAnti(MLinear); #ATENÇÃO: esta função apenas pode ser chamada para as matrizes 2x2




