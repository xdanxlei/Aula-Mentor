(*
	Fichero: ipexam1.pas
	Fecha: 04/06/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Analiza una cadena y da el número de caracteres, cifras, letras  y caracteres no alfanuméricos.
	*)

Program ipexam1;

(*-- Constantes globales al programa --*)
Const
	tamlinea = 40; (*Tamaño máximo de una lídea de caracteres a analizar.*)

(*-- Tipos globales al programa --*)
Type
	Tlinea = string[tamlinea]; (*Tipo: líneas usadas para análisis.*)
 
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

(*-- Variables del módulo principal --*)
Var 
	cadena : Tlinea; (*Cadena de caracteres a analizar.*)
	
	num_char : integer; (*Número de caracteres en la cadena.*)
	num_letras : integer; (*Número de letras en la cadena.*)
	num_cifras : integer; (*Número de cifras en la cadena.*)
	num_otro : integer; (*Número de caracteres no alfanuméricos en la cadena.*)

(*-- Función principal. --*)
begin
	(*-- Inicialización de variables. --*)
	num_char := 0;
	num_letras := 0;
	num_cifras := 0;
	num_otro := 0;
	
	(*-- Lectura de datos. --*)
	writeln('Escriba la cadena a analizar:');
	readln(cadena);
	writeln;
	
	(*-- Cálculo de resultados. --*)
	AnalizaCaracteres(cadena, num_char, num_letras, num_cifras, num_otro);
	
	(*-- Presentación de resultados. --*)
	writeln('El n', #163, 'mero de caracteres es ', num_char, '.');
	writeln('El n', #163, 'mero de letras es ', num_letras, '.');
	writeln('El n', #163, 'mero de n', #163, 'meros es ', num_cifras, '.');
	writeln('El n', #163, 'mero de caracteres de otro tipo es ', num_otro, '.');
	readln;
end.