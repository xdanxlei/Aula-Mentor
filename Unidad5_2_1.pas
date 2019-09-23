(*
	Fichero: Unidad5_2_1.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Muestra números del 1 al 10 separados por un guión.
	*)
	
Program Unidad5_2_1;

Var
	i:integer;
begin
	for i := 1 to 10 do
		write(i,' - ');
	readln;
end.
