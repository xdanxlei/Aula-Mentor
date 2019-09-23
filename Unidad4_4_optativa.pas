(*
	Fichero: Unidad4_4_optativa.pas
	Fecha: 27/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide dos números y calcula la media.
	*)
	
Program calcula_medias;

(*-- Variables Globales -- *)
var
	valor1: real;     (* Primer valor para la media *)
	valor2: real;     (* Segundo valor para la media*)
	media: real;      (* Almacena la media *)

(*-- Programa Principal -- *)  
begin
	(* Aquí debe ir la solicitud y lectura de los datos *)
	writeln('Inserte el primer numero:');
	readln(valor1);
	writeln('Inserte el segundo numero:');
	readln(valor2);
	
	(* Aquí debe ir el cálculo del resultado *)
	media := ( valor1 + valor2 )/2;
	(* Aquí debe ir la presentación de los resultados *)
	writeln('El valor medio de los numeros insertados es: ',media:0:5);
	readln;
end.