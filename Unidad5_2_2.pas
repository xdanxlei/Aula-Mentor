(*
	Fichero: Unidad5_2_2.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide dos valores y muestra todos los números del primer al segundo valor.
	*)
	
Program Unidad5_2_2;

Var 
	i:integer; (*Variable de control.*)
	valor_i:integer; (*Valor inicial.*)
	valor_f:integer; (*Valor final.*)
begin
	repeat
		writeln('Por favor, inserte el primer valor:'); (*Se pide el primer valor.*)
		readln(valor_i); (*Se inserta el primer valor.*)
		writeln('Por favor, inserte el segundo valor:'); (*Se pide el segundo valor.*)
		readln(valor_f); (*Se inserta el segundo valor.*)
		if (valor_i >= valor_f) then
			writeln('Error: el segundo valor debe ser mayor que el primero.'); (*He incluído un mensaje de error cuando los valores sean incorrectos.*)
	until (valor_i < valor_f); (*El ciclo se repetirá hasta que el el valor final sea mayor que el inicial.*)
	for i := valor_i to valor_f do
		write(i,' - ');
	readln;
end.
