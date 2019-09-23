(*
	Fichero: Unidad9_2_1.pas
	Fecha: 18/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: indica el número de líneas y de caracteres de un fichero.
	*)

Program Unidad9_2_1;
	

(*-- Tipos globales al programa --*)
Type
	cadena = string[255];
	Tfichero = text;      (* Define un tipo de fichero de tipo texto  *)
 
(*-- Funciones y procedimientos --*)
(*Función num_lineas: devuelve el número de líneas de un fichero.*)
Function num_lineas(VAR fichero:Tfichero) : integer;
begin
	num_lineas := 0;
	reset(fichero);
	while not eof(fichero) do 
	begin
		readln(fichero);
		num_lineas := num_lineas + 1;
	end;
end;

(*Función num_caracteres: devuelve el número de caracteres de un fichero.*)
Function num_caracteres(VAR fichero:Tfichero) : integer;
Var
	i: integer;
	linea : cadena;
	size : integer;
begin
	num_caracteres := 0;
	size := num_lineas(fichero);
	reset(fichero);
	for i := 1 to size do 
	begin
		readln(fichero, linea);
		num_caracteres := num_caracteres + ord(linea[0]);
	end;
end;

(*-- Variables del módulo principal --*)
Var 
	fichero : Tfichero;
	nombre : cadena;
	lineas : integer;
	caracteres : integer;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	write('Nombre del fichero: ');
	readln(nombre);
	assign(fichero, nombre);
	writeln;
	
	(*-- Cálculo de resultados. --*)
	reset(fichero);
	lineas := num_lineas(fichero);
	caracteres := num_caracteres(fichero);
	close(fichero);
	
	(*-- Presentación de resultados. --*)
	writeln('Fichero ', nombre, '.');
	writeln(lineas, ' lineas.');
	writeln(caracteres, ' caracteres.');
	readln;
end.