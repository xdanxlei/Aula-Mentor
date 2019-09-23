(*
	Fichero: Unidad6_3_optativa.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Escribe los números pares entre dos números.
	*)

program Unidad6_3_optativa;

(*Procedimiento Pares: decide qué números deben escribirse y los escribe.*)
Procedure Pares(numero1:integer;numero2:integer);
Var
	i:integer;
begin
	for i := numero1 to numero2 do
		begin
			if not (odd(i)) and not (i=numero1) and not (i=numero2) then (*Interpretación muy literal de las instrucciones del ejercicio.*)
				write(i,' - ');
		end;
	writeln;
end;

(*Declaración de variables.*)
var
	numero1:integer; (*Número a introducir por el usuario.*)
	numero2:integer; (*Si el número es impar.*)

(*Función principal.*)
begin
	(*Lectura de datos.*)
	repeat
		writeln('Introduzca el numero inicial: ');
		readln(numero1);
		writeln;
		writeln('Introduzca el numero final: ');
		readln(numero2);
		writeln;
		(*Mensaje de error si el número inicial no es menor al número final.*)
		if (numero1>=numero2) then
			writeln('El numero inicial debe ser menor al numero final.');
		writeln;
	until (numero1<numero2);

	(*Presentación de resultados.*)
	pares(numero1,numero2);
	readln;
end.