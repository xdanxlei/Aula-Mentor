(*
	Fichero: ipexam2.pas
	Fecha: 04/06/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: 
	*)

Program ipexam2;

(*-- Constantes globales al programa --*)
Const
	tamlinea = 255; (*Tamaño máximo de una lídea de caracteres a analizar.*)

(*-- Tipos globales al programa --*)
Type
	Tlinea = string[tamlinea]; (*Tipo: líneas usadas para análisis.*)
	Tfichero = text;
 
(*-- Funciones y procedimientos --*)
(*Procedimiento AnalizaCaracteres: toma una cadena de caracteres y cuenta sus caracteres clasificados por tipo.*)
Procedure AnalizaCaracteres(cadena:Tlinea; VAR num_char:integer; VAR num_letras:integer; VAR num_cifras:integer; VAR num_otro:integer);
Var
	i : integer; (*Variable control de un bucle for.*)
	caracter : integer; (*Número correspondiente al caracter que se está analizando.*)
begin
	num_char := length(cadena);
	
	for i:= 1 to num_char do
	begin
		caracter := ord(cadena[i]);
		
		if (caracter > 47) and (caracter < 58) then(*Número.*)
			num_cifras := num_cifras + 1
			
		else (*No número.*)
			if ((caracter > 64) and (caracter < 91)) 
			or ((caracter > 96) and (caracter < 123)) 
			or ((caracter > 127) and (caracter < 156)) 
			or ((caracter > 159) and (caracter < 168)) then (*Letra.*)
				num_letras := num_letras + 1
				
			else (*Caracter no alfanumérico.*)
				num_otro := num_otro + 1;
	end;
end;

(*Procedimiento escribir_fichero_destino: escribe cada línea del fichero destino.*)
Procedure escribir_fichero_destino(VAR entrada:Tfichero; VAR salida:Tfichero);
Var 
	num_char : integer; (*Número de caracteres en la cadena.*)
	num_letras : integer; (*Número de letras en la cadena.*)
	num_cifras : integer; (*Número de cifras en la cadena.*)
	num_otro : integer; (*Número de caracteres no alfanuméricos en la cadena.*)
	
	total_char : integer; (*Número de caracteres en el fichero.*)
	total_letras : integer; (*Número de letras en el fichero.*)
	total_cifras : integer; (*Número de cifras en el fichero.*)
	total_otro : integer; (*Número de caracteres no alfanuméricos en el fichero.*)
	
	cadena : Tlinea; (*Cadena actual en el fichero origen.*)
	
	linea : integer; (*Número de línea actual.*)
begin
	total_char := 0;
	total_letras := 0;
	total_cifras := 0;
	total_otro := 0;
	
	linea := 1;
	
	while not eof(entrada) do
	begin
		readln(entrada, cadena);
		
		num_char := 0;
		num_letras := 0;
		num_cifras := 0;
		num_otro := 0;
		
		AnalizaCaracteres(cadena, num_char, num_letras, num_cifras, num_otro);
		
		write(salida, 'La linea ');
		write(salida, linea);
		write(salida, ' contiene ');
		write(salida, num_char);
		write(salida, ' caracteres con ');
		write(salida, num_letras);
		write(salida, ' letras, ');
		write(salida, num_cifras);
		write(salida, ' numeros y ');
		write(salida, num_otro);
		writeln(salida, ' caracteres de otro tipo.');
		
		linea := linea + 1;
		
		total_char := total_char + num_char;
		total_letras := total_letras + num_letras;
		total_cifras := total_cifras + num_cifras;
		total_otro := total_otro + num_otro;
	end;
	
	write(salida, 'En total hay ');
	write(salida, total_letras);
	write(salida, ' letras, ');
	write(salida, total_cifras);
	write(salida, ' numeros y ');
	write(salida, total_otro);
	write(salida, ' caracteres de otro tipo.');
end;

(*-- Variables del módulo principal --*)
Var 
	nom_entrada : Tlinea; (*Nombre del fichero de texto origen.*)
	entrada : Tfichero; (*Fichero de texto origen.*)
	
	nom_salida : Tlinea; (*Nombre del fichero de texto destino.*)
	salida : Tfichero; (*Fichero de texto destino.*)
	
(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	write('Nombre del fichero origen: ');
	readln(nom_entrada);
	writeln;
	
	write('Nombre del fichero destino: ');
	readln(nom_salida);
	writeln;
	
	(*-- Cálculo de resultados. --*)
	assign(entrada, nom_entrada);
	reset(entrada);
	
	assign(salida, nom_salida);
	rewrite(salida);
	
	escribir_fichero_destino(entrada, salida);
	
	close(entrada);
	close(salida);
	
	writeln('Fichero destino creado.');
	readln;
end.