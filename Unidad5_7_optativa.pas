(*
	Fichero: Unidad5_7_optativa.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide nombre, edad, altura y peso. Calcula el peso relativo y presenta todos los datos. Indica si el peso relativo es adecuado o está por encima o por debajo del recomendado.
	*)
	
Program Unidad5_7_optativa;

(*-- Constantes --*)
const
	PESOMIN = 20;
	PESOMAX = 26;

(*-- Variables Globales -- *)
var
	nombre:string;
	edad:integer;
	altura:real;
	peso:real;
	peso_relativo:real;
	terminar:string; (*Almacena la respuesta cuando se pregunta al usuario si quiere repetir el proceso.*)
	
(*-- Programa Principal -- *)  
begin
	repeat
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
		writeln('Altura: ',altura:0:99,'m');
		writeln('Peso: ',peso:0:99,'kg');
		writeln('Peso relativo: ',peso_relativo:0:99);
		if (peso_relativo >= PESOMIN) then
			if (peso_relativo <= PESOMAX) then
				writeln('Peso adecuado.') (*Si el peso relativo es menor al máximo y mayor al mínimo.*)
			else
				writeln('Peso por encima del recomendado.') (*Si el peso relativo es mayor al máximo.*)
		else
			writeln('Peso por debajo del recomendado.'); (*Si el peso relativo es menor al mínimo.*)
			
		(*Pregunta al usuario si quiere repetir el proceso.*)
		writeln('');
		writeln('¿Desea repetir el proceso? (S/N)');
		readln(terminar);
	until (terminar = 'N') or (terminar = 'n');
end.