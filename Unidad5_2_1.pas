(*
	Fichero: Unidad5_2_1.pas
	Fecha: 01/05/2019
	Autor: Daniel Garc�a Zambrano
	Mail: metroid.xdan@gmail.com
	Descripci�n: Muestra n�meros del 1 al 10 separados por un gui�n.
	*)
	
Program Unidad5_2_1;

Var
	i:integer;
begin
	for i := 1 to 10 do
		write(i,' - ');
	readln;
end.
