% BW = segmentacion(I)
%
% Proyecto Visi�n Artificial
%
%    Este m�todo .... (INCLUIR DESCRIPCI�N)
%
%    Input:
%       I Imagen a a escala de grises tipo uint3
%
%    Output:
%       BW Imagen en blanco y negro con los obejetos de interes
%
%
% Autor_1
% Autor_2
% Autor_3
% Universidad Nacional de Colombia, sede Medell�n
 
function BW = segmentacion(I)
    Ialt=I;
    Ialt(Ialt>10)=255;
    %Binarizaci�n
    figure,imshow(Ialt)
    I=255-Ialt;
    % Elementos estructurantes para las operaciones morfol�gicas
    SE = strel('disk',5);
    BW = imdilate(I,SE);
end
