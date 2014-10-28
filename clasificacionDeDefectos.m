% [X, Xn] = extraccionDeCaracteristicas(Ig, L)
%
% Proyecto Visi�n Artificial
%
%    Este m�todo .... (INCLUIR DESCRIPCI�N)
%
%    Input:
%       X  Matriz de caracter�sticas
%       op.train Deterina si est� entrenado o probando (Por defecto: true)
%       op.d Vector de clasificaci�n ideal (solo para ENTRENAMMIENTO)
%
%    Output:
%       ds Clasificaci�n echa por el clasificador
%       op Par�metros del Clasificador
%
% Autor_1
% Autor_2
% Autor_3
% Universidad Nacional de Colombia, sede Medell�n
 
function [ds, op] = clasificacionDeDefectos(X, op)

    if (op.train)

        opt.train = false;

        b(1).name = 'lda';   b(1).options.p=[];  % Es el que tuvo mejor Desempe�o 
        opt.options = Bcl_structure(X, op.d, b);

        ds = Bcl_structure(X, opt.options);
        op = opt;
    else
        ds = Bcl_structure(X, op.options);
    end

end
