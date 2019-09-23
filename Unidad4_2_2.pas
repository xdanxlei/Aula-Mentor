(*
	Fichero: Unidad4_2_2.pas
	Fecha: 27/04/2019
	Autor: Daniel Garc�a Zambrano
	Mail: metroid.xdan@gmail.com
	Descripci�n: Pide al usuario la base y altura de un tri�ngulo y muestra el �rea por pantalla.
	*)
	
Program Unidad4_2_1;

Var
	base:real; (*La introduce el usuario.*)
	altura:real; (*La introduce el usuario.*)
	area:real; (*Aqu� se almacena el resultado a mostrar.*)
begin
	(*Pide la base y altura al usuario.*)
	writeln('Por favor, introduzca la base del tri�ngulo: ');
	readln(base);
	writeln('Por favor, introduzca la altura del tri�ngulo: ');
	readln(altura);
	(*Calcula el resultado.*)
	area := base*altura/2;
	(*Muestra el resultado*)
	writeln('El �rea del tri�ngulo descrito es: ', area:20:2);
	readln; (*Evita que el programa se cierre en FreePascal.*)
end.
