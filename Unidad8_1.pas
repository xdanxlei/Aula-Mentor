(*
	Fichero: Unidad8_1.pas
	Fecha: 15/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Almacena información sobre compras de productos y la muestra por pantalla.
	*)

Program Unidad8_1;

(*-- Constantes globales al programa --*)
Const
	TAMMAXCESTA = 5; (*Tamaño máximo de la tabla cesta.*)

(*-- Tipos globales al programa --*)
Type
	cadena = string[40]; (*Tipo de tabla de caracteres.*)
	
	Producto = record (*Tipo de registro que contiene los datos de un producto.*)
		nombre : cadena; (*Nombre del producto.*)
		cantidad : integer; (*Número de unidades a comprar.*)
		precio : real; (*Precio en €.*)
		en_cesta : boolean; (*True si el producto se encuentra en la cesta.*)
	end;
	
	cesta = array[0..TAMMAXCESTA] of producto; (*Tabla de productos.*)

(*-- Funciones y procedimientos --*)
(*Procedimiento lee_producto: toma los datos de un producto y lo marca como en_cesta.*)
Procedure lee_producto(VAR entrada:producto);
begin
	write('Nombre: ');
	readln(entrada.nombre);
	write('Cantidad a comprar: ');
	readln(entrada.cantidad);
	write('Precio en euros: ');
	readln(entrada.precio);
	entrada.en_cesta := true;
end;

(*Procedimiento escribe_producto: muestra los datos de un producto.*)
Procedure escribe_producto(entrada:producto);
begin
	writeln(entrada.nombre,':');
	writeln;
	writeln('Cantidad a comprar: ',entrada.cantidad);
	writeln('Precio: ',entrada.precio:7:2);
end;

(*Procedimiento inicializa_cesta: asigna false a todas las variables de cesta.*)
Procedure inicializa_cesta(VAR entrada:cesta; tammaxcesta:integer);
Var
	i : integer;
begin
	for i := 1 to tammaxcesta do
		entrada[i].en_cesta := false;
end;

(*Procedimiento mostrar_producto: muestra los datos de una variable de una cesta.*)
Procedure mostrar_producto(entrada:cesta; indice:integer);
begin
	escribe_producto(entrada[indice]);
end;

(*Procedimiento mostrar_cesta: muestra los productos de una cesta tales que en_cesta = true.*)
Procedure mostrar_cesta(entrada:cesta; tammaxcesta:integer);
Var
	i : integer;
begin
	for i:= 1 to tammaxcesta do
	begin
		if entrada[i].en_cesta = true then
		begin
			writeln;
			mostrar_producto(entrada, i);
		end;
	end;
end;

(*Procedimiento lee_cesta: pide al usuario llenar todos los productos de una cesta.*)
Procedure lee_cesta(VAR entrada:cesta; tammaxcesta:integer);
Var
	i : integer;
begin
	for i:= 1 to tammaxcesta do
	begin
		writeln('Producto ',i,':');
		writeln;
		lee_producto(entrada[i]);
		writeln;
	end;
end;

(*-- Variables del módulo principal --*)
Var
	cesta1 : cesta;

(*-- Función principal. --*)
begin
	(*-- Inicialización de variables. --*)
	inicializa_cesta(cesta1, tammaxcesta);
	
	(*-- Lectura de datos. --*)
	writeln('A continuacion debe introducir los datos de los productos de la cesta:');
	writeln;
	lee_cesta(cesta1, tammaxcesta);
	
	(*-- Cálculo de resultados. --*)
	
	
	(*-- Presentación de resultados. --*)
	writeln;
	writeln;
	writeln;
	writeln('Esta es su cesta:');
	writeln;
	mostrar_cesta(cesta1, tammaxcesta);
	readln;
end.