(*
	Fichero: Unidad5_5_optativa.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide una vocal al usuario y le dice su posición en el alfabeto.
	*)
	
Program Unidad5_5_optativa;

Var
	vocal:char; (*La vocal*)

begin
	writeln('Introduzca una vocal:'); (*Pide la vocal.*)
	readln(vocal); (**Lee la vocal*)
	case (vocal) of
		(*Comprueba la vocal y muestra un mensaje apropiado para la vocal.*)
		'A' , 'a' : writeln('Ha pulsado la primera vocal, "a".');
		'E' , 'e' : writeln('Ha pulsado la segunda vocal, "e".');
		'I' , 'i' : writeln('Ha pulsado la tercera vocal, "i".');
		'O' , 'o' : writeln('Ha pulsado la cuarta vocal, "o".');
		'U' , 'u' : writeln('Ha pulsado la quinta vocal, "u".');
	else
		writeln('Error: el caracter introducido no es una vocal.'); (*Mensaje de error si se inserta algo distinto a una vocal.*)
	end;
	readln;
end.
