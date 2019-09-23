(*
	Fichero: Unidad4_2_1.pas
	Fecha: 27/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide datos al usuario y los muestra por pantalla.
	*)
	
Program Unidad4_2_1;

Var
(*Declaro las cuatro variables que debe insertar el usuario.*)
	nombre:string;
	dni:string;
	estado_civil:string;
	n_coches:integer; (*El número de coches no debería contener decimales.*)
	
begin
	writeln('Por favor, escriba su nombre:'); (*Explico al usuario qué debe escribir.*)
	readln(nombre); (*El programa lee lo que ha escrito el usuario y lo almacena en la variable nombre.*)
	(*Repito el proceso con el resto de datos.*)
	writeln('Introduzca su DNI:');
	readln(dni);
	writeln('Especifique su estado civil:');
	readln(estado_civil);
	writeln('Indique el número de coches que posee actualmente:');
	readln(n_coches);
	(*Presento por pantalla la información recogida.*)
	writeln('Nombre: ', nombre);
	writeln('DNI: ', dni);
	writeln('Estado civil: ', estado_civil);
	writeln('Número de coches: ', n_coches);
	readln; (*Evita que el programa se cierre en FreePascal.*)
end.
