(*
	Fichero: unidad_3_3_optativa.pas
	Fecha: 22/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide un nombre e imprime en pantalla un mensaje que contiene el nombre. No utiliza ninguna constante.
	*)
	
(*Nombre del programa*)
Program unidad_3_3_optativa;

(*Declaración de variables*)
Var 
	nombre: string[40]; (*Variable Nombre. Albergará el nombre del usuario.*)

(*Comienza el programa.*)
begin
	write('Introduzca su nombre: '); (*Imprime un texto en pantalla que pide su nombre al usuario.*)
	readln(nombre); (*El usuario inserta su nombre aquí, que será almacenado en la variable Nombre.*)
	writeln('Bienvenido al mundo de la programacion ', nombre); (*Imprime un mensaje de bienvenida con el nombre del usuario almacenado en la variable Nombre.*)
	readln;
end. (*Termina el programa.*)