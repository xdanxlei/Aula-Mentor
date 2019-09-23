(*
	Fichero: Unidad4_5_optativa.pas
	Fecha: 27/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide nombre, edad, altura y peso. Calcula el peso relativo y presenta todos los datos.
	*)
	
Program Unidad4_5_optativa;

(*-- Variables Globales -- *)
var
	nombre:string;
	edad:integer;
	altura:real;
	peso:real;
	peso_relativo:real;
	
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
	
	(* Cálculo del resultado *)
	peso_relativo := peso / ( altura * altura );
	(* Presentación de los resultados *)
	writeln('Nombre: ',nombre);
	writeln('Edad: ',edad);
	writeln('Altura: ',altura:0:2,'m');
	writeln('Peso: ',peso:0:3,'kg');
	writeln('Peso relativo: ',peso_relativo:0:2);
	readln;
end.