(*
	Fichero: Unidad7_7_optativa.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide los precios de una serie de cuadros y calcula la suma de los tres primeros precios y de los tres últimos.
	*)

Program Galeria;

(*-- Constantes globales al programa -- *)
Const
	tamcoleccion = 4; (*Número de cuadros por colección.*)

(*-- Tipos globales al  programa -- *)
Type
	coleccion = array [1..tamcoleccion] of real; (*Precios ordenados por número de cuadro.*)

(*-- Funciones y procedimientos -- *)
(*Procedimiento lee_tabla: pide al usuario el precio de cada cuadro de una colección.*)
Procedure lee_tabla(VAR precios:coleccion; tamcoleccion:integer);
Var
	i:integer;
begin
	writeln('Por favor, introduzca el precio de cada cuadro.');
	writeln;
	for i:= 1 to tamcoleccion do
	begin
		write('Cuadro ',i,': ');
		readln(precios[i]);
	end;
	writeln;
end;

(*Función suma_coleccion: devuelve el precio total de una colección.*)
Function suma_coleccion(precios:coleccion; tamcoleccion:integer) : real;
Var
	i:integer;
begin
	suma_coleccion := 0;
	for i:= 1 to tamcoleccion do
		suma_coleccion := suma_coleccion + precios[i];
end;

(*-- Variables del módulo principal --*)
Var 
	precios1 : coleccion; (*Tabla de precios de los cuadros.*)
	
	XXXXXXXXXX : real; (*Suma de los tres primeros precios.*)
	YYYYYYYYYY : real; (*Suma de los tres últimos precios.*)

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	lee_tabla(precios1, TAMCOLECCION);
	
	(*-- Cálculo de resultados. --*)
	XXXXXXXXXX:=suma_coleccion(precios1, tamcoleccion)-precios1[tamcoleccion];
	YYYYYYYYYY:=suma_coleccion(precios1, tamcoleccion)-precios1[1];
	
	(*-- Presentación de resultados. --*)
	writeln('La suma de los tres primeros es ',XXXXXXXXXX:5:2,'.');
	writeln('La suma desde el segundo hasta el ultimo es ',YYYYYYYYYY:5:2,'.'); 
	readln;
end.