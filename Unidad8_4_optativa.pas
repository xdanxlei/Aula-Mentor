(*
	Fichero: Unidad8_4_optativa.pas
	Fecha: 17/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: recoge los datos de tres cuadros y los muestra por pantalla junto a la suma de sus precios. Permite buscar cuadros por autor.
	*)

Program Unidad8_4_optativa;
	
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

(*Función suma_coleccion: devuelve la suma de los precios de una colección. Devuelve por referencia el número de cuadros que no están en venta.*)
Function suma_coleccion(coleccion:tcoleccion; tamcoleccion:integer; VAR no_en_venta:integer) : real;
Var
	i : integer;
begin
	suma_coleccion := 0;
	no_en_venta := 0;
	for i := 1 to tamcoleccion do
	begin
		if coleccion[i].precio = 0 then
			no_en_venta := no_en_venta + 1
		else
			suma_coleccion := suma_coleccion + coleccion[i].precio;
	end;
end;

(*Procedimiento busca_autor: muestra por pantalla los datos de los cuadros de un autor.*)
Procedure busca_autor(coleccion:tcoleccion; autor:cadena; tamcoleccion:integer);
Var
	i : integer;
	exito : boolean;
begin
	exito := false;
	for i := 1 to tamcoleccion do
	begin
		if coleccion[i].autor = autor then
		begin
			imprime_cuadro(coleccion[i]);
			exito := true;
		end;
	end;
	if exito = false then
		writeln('No se ha encontrado el autor.');
	writeln;
end;

(*-- Variables -- *)
Var 
  coleccion1 : Tcoleccion;
  suma : real;
  no_en_venta : integer;
  autor_buscado : cadena;
        
(*-- Programa Principal -- *)
Begin
	(*-- Petición de datos --*)
	writeln('>Datos primera coleccion:');
	writeln;
	lee_coleccion(coleccion1, TAMCOLECCION);
	writeln;
	 
	(*-- Cálculo de la suma  --*)
	suma:=suma_coleccion(coleccion1,TAMCOLECCION, no_en_venta);

	(*-- Presentación de resultados --*) 
	writeln('>Datos de los cuadros:');
	imprime_coleccion(coleccion1, TAMCOLECCION);
	writeln;

	writeln('> La suma es: ', suma:0:2);
	if no_en_venta <> 0 then
		writeln('> Y hay ', no_en_venta, ' cuadros no en venta.');
	writeln;
	
	(*-- Búsqueda de autores. --*)
	repeat
		write('Introduzca el autor a buscar (dejar en blanco para terminar el programa): ');
		readln(autor_buscado);
		writeln;
		if length(autor_buscado) <> 0 then
			busca_autor(coleccion1, autor_buscado, tamcoleccion);
	until length(autor_buscado) = 0;
End.