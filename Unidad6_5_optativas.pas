(*
	Fichero: Unidad6_5_optativas.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide nombre, edad, altura y peso. Calcula el peso relativo y presenta todos los datos.
	*)
	
Program Unidad6_5_optativas;

(*Función peso_relativo: calcula el peso relativo a partir de la altura y el peso absoluto.*)
Function peso_relativo(altura:real;peso:real):real;
begin
	peso_relativo := 0;
	peso_relativo := peso / ( altura * altura );
end;

(*-- Variables Globales -- *)
var
	nombre:string;
	edad:integer;
	altura:real;
	peso:real;
	
(*-- Programa Principal -- *)  
begin
	(* Solicitud y lectura de los datos *)
	writeln('Escriba su nombre:');
	readln(nombre);
	writeln('Indique su edad:');
	readln(edad);
	writeln('Indique su altura en metros:');
	readln(altura);
	writeln('Indique su peso en kilogramos:');
	readln(peso);
	
	(* Presentación de los resultados *)
	writeln('Nombre: ',nombre);
	writeln('Edad: ',edad);
	writeln('Altura: ',altura:0:99,'m');
	writeln('Peso: ',peso:0:99,'kg');
	writeln('Peso relativo: ',peso_relativo(altura,peso):0:99);
	readln;
end.