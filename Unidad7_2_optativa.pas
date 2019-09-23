(*
	Fichero: Unidad7_2_optativa.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide al usuario una cadena de caracteres y calcula su longitud usando dos métodos distintos.
	*)

Program Unidad7_2_optativa;

(*-- Constantes globales al programa --*)
Const
	max=40; (*Longitud física de la cadena.*)

(*-- Tipos globales al  programa --*)
Type
	cadena=string[max];
 
(*-- Funciones y procedimientos --*)

(*Procedimiento metodo_a: calcula la longitud lógica de la cadena mediante el método a (length).*)
Procedure metodo_a(frase:cadena; VAR longitud:integer);
begin
	longitud:=length(frase);
end;

(*Procedimiento metodo_b: calcula la longitud lógica de la cadena mediante el método b (ord).*)
Procedure metodo_b(frase:cadena; VAR longitud:integer);
begin
	longitud:=ord(frase[0]);
end;

(*-- Variables del módulo principal --*)
Var 
	frase:cadena; (*Cadena a medir.*)
	long_a:integer; (*Longitud lógica de la cadena calculada mediante el método a.*)
	long_b:integer; (*Longitud lógica de la cadena calculada mediante el método b.*)

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	writeln('Escriba una frase:');
	readln(frase);
	
	(*-- Cálculo de resultados. --*)
	metodo_a(frase, long_a);
	metodo_b(frase, long_b);
	
	(*-- Presentación de resultados. --*)
	writeln;
	writeln('Metodo A (length): ',long_a);
	writeln('Metodo B (ord): ',long_b);
	readln;
end.