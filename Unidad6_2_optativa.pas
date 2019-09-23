(*
	Fichero: Unidad6_2_optativa.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Indica si un número es par o impar.
	*)

program pareseimpares;

(*Declaración de variables.*)
var
	numero:integer; (*Número a introducir por el usuario.*)
	impar:boolean; (*Si el número es impar.*)

(*Función principal.*)
begin
	(*Lectura de datos.*)
	writeln('Introduzca un numero: ');
	readln(numero);
	
	(*Cálculo de resultados.*)
	impar:=odd(numero); (*Comprueba si el número es impar.*)
	
	(*Presentación de resultados.*)
	if(impar) then
		writeln('El numero ',numero,' es impar.') (*Mensaje si el número es impar.*)
	else
		writeln('El numero ',numero,' es par.'); (*Mensaje si el número es par.*)
	readln;
end.