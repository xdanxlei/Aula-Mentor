(*
	Fichero: Unidad6_2_3.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Escribe un triangulo de altura indicada usando el caracter indicado.
	*)

program Unidad6_2_3;
	
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

(*Procedimiento pinta_tri: pinta el triangulo usando lineas del procedimiento linea.*)
Procedure pinta_tri(caracter:char;altura:integer);
Var
	i:integer;
begin
	for i:= 1 to altura do
		linea(caracter,i);
end;

(*-- Variables Globales -- *)  
var	
  caracter:char; (*Caracter a escribir.*)
  altura:integer; (*Numero de lineas del triangulo.*)
	
(*-- Programa Principal -- *)  		
begin
	(* Solicitud de los datos *)
	write('Introduzca altura del triangulo: ');
	readln(altura);
	write('Introduzca letra: ');
	readln(caracter);
	
	(* Presentación de resultados. *)
	pinta_tri(caracter,altura);
	readln;
end.