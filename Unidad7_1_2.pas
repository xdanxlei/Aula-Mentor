(*
	Fichero: Unidad7_1_2.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Convierte una tabla de caracteres en una tabla de sus números correspondientes.
	*)

Program Unidad7_1_2;

Type
	cadena=string[40];
	tabla=array[1..40] of integer;

(*Procedimiento Convertir_chr: toma un caracter de una cadena e inserta su entero correspondiente en una tabla de números.*)
Procedure Convertir_chr(entrada:cadena;posicion:integer;VAR salida:tabla);
begin
	salida[posicion] := ord(entrada[posicion]);
end;

(*Procedimiento Convertir_cadena: convierte una tabla de caracteres en una tabla de sus números correspondientes.*)
Procedure Convertir_cadena(entrada:cadena;VAR salida:tabla);
Var
	i:integer;
begin
	for i := 1 to ord(entrada[0]) do
		Convertir_chr(entrada,i,salida);
end;

(*Procedimiento Escribir_tabla: escribe todos los números de una tabla de números.*)
Procedure Escribir_tabla(num:tabla;size:integer);
Var
	i:integer;
begin
	for i:= 1 to size do
		write(num[i],' - ');
	writeln;
end;

(*-- Declaración de variables. --*)
Var 
	frase:cadena;
	resultado:tabla;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	writeln('Escriba una frase:');
	readln(frase);
	
	(*-- Cálculo de resultados. --*)
	Convertir_cadena(frase,resultado);
	
	(*-- Presentación de resultados. --*)
	writeln;
	Escribir_tabla(resultado,ord(frase[0]));
	readln;
end.