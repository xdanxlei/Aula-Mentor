(*
	Fichero: Unidad7_1_5.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Convierte mayúsculas en minúsculas y minúsculas en mayúsculas.
	*)

program modificaciondecadena;

(*-- Declaración de variables. --*)
var
	cadenaoriginal:string[10]; (*Cadena insertada por el usuario.*)
	cadenamodificada:string[10]; (*Resultado del programa.*)
	valornumerico:integer; (*Almacena el número correspondiente a un caracter mayúscula antes de convertirlo en minúscula.*)
	control:integer; (*Variable control de un bucle for.*)
	
(*-- Comienza el programa. --*)
begin
	(*-- Lectura de datos. --*)
	writeln('Introduzca una cadena con mayúsculas y  minúsculas: ');
	readln(cadenaoriginal);
	
	(*-- Cálculo de resultados. --*)
	cadenamodificada:=cadenaoriginal; (*Al no trabajar directamente sobre la cadena original, podemos usarla para comparar y mostrarla al final del programa.*)
	
	(*Bucle for: para cada caracter comprueba si es mayúscula. Si lo es, lo convierte en minúscula. Si no lo es, lo convierte en mayúscula.*)
	for control:=1 to length(cadenaoriginal)do
		begin
			if(cadenaoriginal[control]=upcase(cadenaoriginal[control])) then (*Si es mayúscula*)
				Begin
					valornumerico:=ORD(cadenaoriginal[control]);
					cadenamodificada[control]:=CHR(valornumerico+32); (*lo convierte en minúscula.*)
				End
			else 														(*Si no es mayúscula*)
				begin
					cadenamodificada[control]:=upcase(cadenaoriginal[control]); (*lo convierte en mayúscula.*)
				end;
		end;
	
	(*-- Presentación de resultados. --*)
	writeln('Esta es la cadena original: ',cadenaoriginal);
	writeln('Esta es la cadena modificada: ',cadenamodificada);
	readln;
end.