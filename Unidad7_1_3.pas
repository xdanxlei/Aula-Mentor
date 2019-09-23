(*
	Fichero: Unidad7_1_3.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Multiplica 10 números por un factor.
	*)

Program Unidad7_1_3;

Type
	tabla_num=array[1..10] of real;

(*Procedimiento Pedir_numeros: pide una cantidad de números y los almacena en una tabla.*)
Procedure Pedir_numeros(VAR numeros:tabla_num;cantidad:integer);
Var
	i:integer;
begin
	for i := 1 to cantidad do
		begin
			write(i,'. Numero: ');
			readln(numeros[i]);
		end
end;

(*Procedimiento Multiplicar_numeros: mutiplica una cantidad de números de una tabla por un factor.*)
Procedure Multiplicar_numeros(VAR numeros:tabla_num;cantidad:integer;factor:real);
Var
	i:integer;
begin
	for i := 1 to cantidad do
		numeros[i] := numeros[i] * factor;
end;

(*Procedimiento Escribir_tabla: escribe todos los números de una tabla de números.*)
Procedure Escribir_tabla(num:tabla_num;size:integer);
Var
	i:integer;
begin
	for i:= 1 to size do
		write(num[i]:0:3,' - ');
	writeln;
end;

(*-- Declaración de variables. --*)
Var 
	numeros:tabla_num;
	factor:real;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	writeln('A continuacion, debera escribir 10 numeros.');
	writeln;
	pedir_numeros(numeros,10);
	writeln;
	
	writeln('Elija el factor por el que seran multiplicados:');
	readln(factor);
	
	(*-- Cálculo de resultados. --*)
	multiplicar_numeros(numeros,10,factor);
	
	(*-- Presentación de resultados. --*)
	writeln;
	Escribir_tabla(numeros,10);
	readln;
end.