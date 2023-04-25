tam = 3;                    #define tamanho de matrizes a serem criadas (apenas est�o preparados os casos 2 ou 3)
MLinear = criarMatriz(tam); #cria matriz 2x2 ou 3x3

verificaClasses(MLinear)   #demora algum tempo a calcular para as matrizes 3x3 (~2min)


isComutativa(MLinear(1,:));   #verificamos as propriedades comutativa, associativa,    
isAssociativa(MLinear(1,:));  #medial, cancelativa � esquerda e cancelativa � direita para uma matriz linear
isMedial(MLinear(1,:));       #passada por par�metro. (Neste exemplo us�mos a 1a matriz linear existente em MLinear)

isCancelativaEsquerda(MLinear(1,:));
isCancelativaDireita(MLinear(1,:));
hasElementoNeutro(MLinear(1,:));


MPerms = perms(1:tam); #perms gera matriz com possibilidades de transforma��o das matrizes
alpha = MPerms(2,:);   #cada linha de MPerms � uma permuta��o poss�vel (alpha), para os testes abaixo
indice = 10;           #escolhemos a linha 2 de MPerms como permuta��o e o �ndice da matriz 10 em MLinear


isIso(MLinear,alpha,indice);     #verifica se existe alguma matriz isom�rfica aquela que � passada na fun��o
isAntiIso(MLinear,alpha,indice); #verifica se existe alguma matriz isom�rfica ou antiisom�rfica 
                                 #aquela que � passada na fun��o


imprimeIsoAnti(MLinear); #ATEN��O: esta fun��o apenas pode ser chamada para as matrizes 2x2




