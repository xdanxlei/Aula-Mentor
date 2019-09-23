(*
	Fichero: Unidad6_2_4.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Muestra unas opciones al usuario. Se repite si la opción escogida no es válida.
	*)

program Unidad6_2_4;
	
(*-- Funciones y procedimientos -- *) 

(*Procedimiento opciones: muestra las opciones al usuario.*)
Procedure opciones(VAR opcion:integer);
begin
	writeln('Elija una opcion:');
	writeln;
	writeln('Abrir cesta de compra existente. (1)');
	writeln('Comenzar cesta de compra nueva. (2)');
	writeln('Añadir producto a la cesta. (3)');
	writeln('Eliminar producto de la cesta. (4)');
	writeln('Guardar cesta. (5)');
	writeln('Pedir cesta. (6)');
	writeln('Salir del programa. (7)'); (*En realidad todas las opciones terminan el programa.*)
	writeln;
	readln(opcion);
end;

(*-- Variables Globales -- *)  
var	
  opcion:integer;
	
(*-- Programa Principal -- *)  		
begin
	repeat
		begin
			opciones(opcion);
			if (opcion < 1) or (opcion > 7) then (*Mensaje de error cuando el número es incorrecto.*)
				begin
					writeln;
					writeln('Por favor, escoja una opcion valida.');
					writeln;
				end;
		end;
	until (opcion > 0) and (opcion < 8);
	
	writeln;
	writeln('Fin del programa.');
	readln;
end.