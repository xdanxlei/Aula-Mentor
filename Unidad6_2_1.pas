(*
	Fichero: Unidad6_2_1.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Suma dos números.
	*)

program Operaciones;
	
(*-- Funciones y procedimientos -- *) 

(*Procedimiento calculo: suma los números.*)
Procedure calculo(primer_numero:real;segundo_numero:real;VAR suma:real);
begin
	suma := primer_numero + segundo_numero;
end;

(*Procedimento presenta_resultados: escribe los resultados en la pantalla.*)
Procedure presenta_resultados(suma:real);
begin
	writeln;
	writeln('Resultado: ',suma:0:99);
	readln;
end;

(*-- Variables Globales -- *)  
var	
  primer_numero:real;
  segundo_numero:real;
  suma:real;
	
(*-- Programa Principal -- *)  		
begin
	(* Solicitud de los datos *)
	writeln('Introduzca el primer numero: ');
	readln(primer_numero);
	writeln('Introduzca el segundo numero: ');
	readln(segundo_numero);
	
	calculo(primer_numero,segundo_numero,suma);
	
	(* Impresión del resultado de la suma por pantalla *)
	presenta_resultados(suma); 
end.