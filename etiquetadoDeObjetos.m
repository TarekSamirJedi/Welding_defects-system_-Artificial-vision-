% [L, N, d] = etiquetadoDeObjetos(I, BW, sup, c)
%
% Proyecto Visi�n Artificial
%
%    Este m�todo Etiquetara los objetos entre Salpicadura(1) y no salpicadura.(2)
%
%    Input:
%       I   Imagen Original
%       BW  Imagen en blanco y negro (Imgen segmentada)
%       sup True si se har� supervision, false (por defecto) en caso
%           conrtario
%       c   N�mero m�ximo de clases (por defecto 2)
%
%    Output:
%       L Imagen de etiquetas
%       N N�mero de objetos en la imagen
%       d Vector de que indica la clase de cada objeto, si el par�metro
%       supervisar es true.
%
%
% Jose Miguel Arrieta Ramos
% Juan Camilo Hincapie
% 
% Universidad Nacional de Colombia, sede Medell�n
 
function [L, N, d] = etiquetadoDeObjetos( BW, sup, c)

   [L, N] = bwlabel(BW, 4);

    if (sup)
        d = Bio_labelregion (BW, L, c);
    else
        d = [];
    end
end
