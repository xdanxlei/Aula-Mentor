(*
	Fichero: unidad_3_2inicial.pas
	Fecha: 22/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide un nombre e imprime en pantalla un mensaje que contiene el nombre.
	*)
	
(*Nombre del programa*)
Program Bienvenido;

(*Declaración de variables*)
Var 
	nombre: string[40] (*Variable Nombre. Albergará el nombre del usuario.*)
(*Declaración de constantes*)
Const
	Bienvenido=Bienvenido al mundo de la programacion; (*Constante Bienvenido. Contiene el mensaje a imprimir posteriormente.*)
(*Comienza el programa.*)
begin
	write('Introduzca su nombre: '); (*Imprime un texto en pantalla que pide su nombre al usuario.*)
	readln(nombre); (*El usuario inserta su nombre aquí, que será almacenado en la variable Nombre.*)
	writeln(Bienvenido,' ', nombre); (*Imprime el mensaje almacenado en la contante Bienvenido y con el nombre del usuario almacenado en la variable Nombre.*)
end. (*Termina el programa.*)