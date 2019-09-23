(*
	Fichero: Unidad6_2_2.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Escribe el caracter escogido el número de veces indicado.
	*)

program Unidad6_2_2;
	
(*-- Funciones y procedimientos -- *) 

(*Procedimiento linea: escribe una linea de longitud definida usando un caracter definido.*)
Procedure linea(caracter:char;longitud:integer);
Var
	i:integer;
begin
	for i:= 1 to longitud do
		write(caracter);
	writeln;
end;

(*-- Variables Globales -- *)  
var	
  caracter:char; (*Caracter a escribir.*)
  longitud:integer; (*Numero de veces a escribir el caracter.*)
	
(*-- Programa Principal -- *)  		
begin
	(* Solicitud de los datos *)
	write('Introduzca longitud de la linea: ');
	readln(longitud);
	write('Introduzca letra: ');
	readln(caracter);
	
	(* Presentación de resultados. *)
	linea(caracter,longitud);
	readln;
end.