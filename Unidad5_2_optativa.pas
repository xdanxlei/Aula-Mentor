(*
	Fichero: Unidad5_2_optativa.pas
	Fecha: 01/05/2019
	Autor: Daniel Garc�a Zambrano
	Mail: metroid.xdan@gmail.com
	Descripci�n: Muestra n�meros del 10 al 0 en orden decreciente.
	*)
	
Program Unidad5_2_optativa;

Var
	i:integer;
begin
	for i := 1 to 11 do
		write(11 - i,' - ');
	readln;
end.
