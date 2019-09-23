(*
	Fichero: Unidad8_2_optativa.pas
	Fecha: 17/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: recoge los datos de tres cuadros y los muestra por pantalla.
	*)

Program Unidad8_2_optativa;
	
(*-- Constantes globales al programa --*)
Const
	TAMCOLECCION = 3;

(*-- Tipos globales al programa --*)
Type
	cadena = string [40];
	
	Tcuadro = record
		Numero : integer;
		Titulo : cadena;
		Autor : cadena;
		Precio : real;
	end;
	
	Tcoleccion = array[1..tamcoleccion] of tcuadro;
 
(*-- Funciones y procedimientos --*)
(*Procedimiento lee_cuadro: pide al usuario los datos de un cuadro.*)
Procedure lee_cuadro(VAR cuadro:tcuadro);
begin
	write('Numero: ');
	readln(cuadro.numero);
	write('Titulo: ');
	readln(cuadro.titulo);
	write('Autor: ');
	readln(cuadro.autor);
	write('Precio: ');
	readln(cuadro.precio);
	writeln;
end;

(*Procedimiento imprime_cuadro: muestra por pantalla los datos de un cuadro.*)
Procedure imprime_cuadro(cuadro:tcuadro);
begin
	writeln('Cuadro ', cuadro.numero, ':');
	writeln;
	writeln('Titulo: ',cuadro.titulo);
	writeln('Autor: ', cuadro.autor);
	if cuadro.precio=0 then
		writeln('El cuadro no esta en venta.')
	else
		writeln('Precio: ', cuadro.precio:0:2);
	writeln;
end;

(*Procedimiento lee_coleccion: pide al usuario los datos de todos los cuadros de una coleccion.*)
Procedure lee_coleccion(VAR coleccion:tcoleccion; tamcoleccion:integer);
Var
	i : integer;
begin
	for i := 1 to tamcoleccion do
		lee_cuadro(coleccion[i]);
end;

(*Procedimiento imprime_coleccion: muestra por pantalla los datos de todos los cuadros de una colección.*)
Procedure imprime_coleccion(coleccion:tcoleccion; tamcoleccion:integer);
Var
	i : integer;
begin
	for i := 1 to tamcoleccion do
		imprime_cuadro(coleccion[i]);
end;

(*-- Variables -- *)
Var 
  coleccion1 : Tcoleccion;
        
(*-- Programa Principal -- *)
Begin
  (* -- Petición de datos --*)
  writeln('>Datos primera coleccion:');
  writeln;
  lee_coleccion(coleccion1, TAMCOLECCION);
  writeln;
 
  (* -- Presentación de resultados --*) 
  writeln('>Datos de los cuadros:');
  writeln;
  imprime_coleccion(coleccion1, TAMCOLECCION);
  readln;
End.