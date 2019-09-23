(*
	Fichero: Unidad7_1_optativas.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Convierte una tabla de números en una cadena de sus caracteres correspondientes.
	*)

Program Unidad7_1_optativas;

Type
	cadena=string[10];
	tabla=array[1..10] of integer;

(*Procedimiento Convertir_num: toma un número de una tabla e inserta su caracter correspondiente en una tabla de caracteres.*)
Procedure Convertir_num(entrada:tabla;posicion:integer;VAR salida:cadena);
begin
	salida[posicion] := chr(entrada[posicion]);
end;

(*Procedimiento Convertir_tabla_num: convierte una tabla de números en una tabla de sus caracteres correspondientes.*)
Procedure Convertir_tabla_num(entrada:tabla;VAR salida:cadena);
Var
	i:integer;
begin
	for i := 1 to 10 do
		Convertir_num(entrada,i,salida);
end;

(*Procedimiento Pedir_numeros: pide una cantidad de números y los almacena en una tabla.*)
Procedure Pedir_numeros(VAR numeros:tabla;cantidad:integer);
Var
	i:integer;
begin
	for i := 1 to cantidad do
		begin
			write(i,'. Numero: ');
			readln(numeros[i]);
		end;
end;

(*Procedimiento Escribir_tabla: escribe todos los caracteres de una tabla de caracteres.*)
Procedure Escribir_tabla(chr:cadena;size:integer);
Var
	i:integer;
begin
	for i:= 1 to size do
		write(chr[i]);
	writeln;
end;

(*-- Declaración de variables. --*)
Var 
	serie:tabla;
	resultado:cadena;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	writeln('Escriba una serie de numeros:');
	pedir_numeros(serie,10);
	
	(*-- Cálculo de resultados. --*)
	Convertir_tabla_num(serie,resultado);
	
	(*-- Presentación de resultados. --*)
	writeln;
	write('Resultado: ');
	escribir_tabla(resultado,10);
	readln;
end.