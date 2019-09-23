(*
	Fichero: Unidad9_2_2.pas
	Fecha: 19/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: copia el contenido de un fichero de texto y le añade una línea.
	*)

Program Unidad9_2_2;


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

(*Procedimiento copiar_linea: copia la línea actual de un fichero de texto a otro.*)
Procedure copiar_linea(VAR entrada:Tfichero; VAR salida:Tfichero);
Var
	linea : cadena;
begin
	while not eoln(entrada) do
	begin
		read(entrada, linea);
		write(salida, linea);
	end;
end;

(*Procedimiento copiar_texto: crea una copia de un fichero de texto.*)
Procedure copiar_texto(VAR entrada:Tfichero; VAR salida:Tfichero);
Var
	i : integer;
	size : integer;
begin
	size := num_lineas(entrada);
	reset(entrada);
	rewrite(salida);
	for i := 1 to size do
	begin
		copiar_linea(entrada, salida);
		readln(entrada);
		writeln(salida);
	end;
end;

(*-- Variables del módulo principal --*)
Var 
	entrada : Tfichero;
	nombre_entrada : cadena;
	
	destino : Tfichero;
	nombre_destino : cadena;
	
	linea : cadena;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	write('Nombre del fichero original: ');
	readln(nombre_entrada);
	assign(entrada, nombre_entrada);
	reset(entrada);
	writeln;
	
	repeat
		write('Nombre del fichero copia: ');
		readln(nombre_destino);
		if nombre_entrada <> nombre_destino then
		begin
			assign(destino, nombre_destino);
			rewrite(destino)
		end
		else
			writeln('El nombre del fichero copia debe ser distinto al nombre del fichero original.');
		writeln;
	until nombre_entrada <> nombre_destino;
	
	writeln('Linea a escribir al final del fichero:');
	readln(linea);
	writeln;
	
	(*-- Cálculo de resultados. --*)
	copiar_texto(entrada, destino);
	write(destino, linea);
	
	close(entrada);
	close(destino);
	
	(*-- Presentación de resultados. --*)
	writeln('Fichero copiado con exito.');
	readln;
end.