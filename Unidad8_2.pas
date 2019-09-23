(*
	Fichero: Unidad8_2.pas
	Fecha: 16/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Almacena información sobre compras de productos y la muestra por pantalla.
	*)

Program Unidad8_2;

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

(*Procedimiento cuenta_productos: devuelve el número de productos en una cesta en los que en_cesta = true.*)
Procedure cuenta_productos(entrada:cesta; tammaxcesta:integer; VAR tamcesta:integer);
Var
	i : integer;
begin
	tamcesta := 0;
	for i:= 1 to tammaxcesta do
	begin
		if entrada[i].en_cesta = true then
			tamcesta := tamcesta + 1;
	end
end;

(*Procedimiento busca_libre: busca la primera posición de una cesta en la que en_cesta = false.*)
Procedure busca_libre(entrada:cesta; tammaxcesta:integer; VAR libre:integer);
Var
	i : integer;
begin
	libre := 0;
	for i:= 1 to tammaxcesta do
	begin
		if libre = 0 then
		begin
			if entrada[i].en_cesta = false then
				libre := i;
		end;
	end
end;

(*Procedimiento incluir_producto_en_cesta: rellena los datos de un producto de la cesta si hay algún hueco libre.*)
Procedure incluir_producto_en_cesta(VAR entrada:cesta; tammaxcesta:integer);
Var
	libre:integer;
begin
	writeln;
	busca_libre(entrada, tammaxcesta, libre);
	if libre = 0 then
		writeln('Cesta llena.')
	else
		lee_producto(entrada[libre]);
end;

(*Procedimiento buscar_producto: devuelve el id del producto buscado o 0 si ninguno coincide.*)
Procedure buscar_producto(entrada:cesta; nombreprod:cadena; tammaxcesta:integer; VAR idproducto:integer);
Var
	i : integer;
begin
	idproducto := 0;
	for i:= 1 to tammaxcesta do
	begin
		if entrada[i].nombre = nombreprod then
			idproducto := i;
	end
end;

(*Procedimiento eliminar_producto_de_cesta: busca un producto por su nombre y, si lo encuentra, cambia en_cesta a false. Nota: encuentra productos cuyo en_cesta ya es false.*)
Procedure eliminar_producto_de_cesta( VAR entrada:cesta; tammaxcesta:integer);
Var
	nombreprod : cadena;
	idproducto : integer;
begin
	write('Nombre del producto que desea eliminar: ');
	readln(nombreprod);
	writeln;
	buscar_producto(entrada, nombreprod, tammaxcesta, idproducto);
	if idproducto = 0 then
		writeln('Producto no encontrado.')
	else
	begin
		entrada[idproducto].en_cesta := false;
		writeln('Producto eliminado.');
		writeln;
	end
end;

(*Procedimiento modificar_producto: busca un producto por su nombre y, si lo encuentra, cambia una variable a decisión del usuario. Nota: encuentra productos cuyo en_cesta es false.*)
Procedure modificar_producto( VAR entrada:cesta; tammaxcesta:integer);
Var
	nombreprod : cadena;
	idproducto : integer;
	atributo : char;
	cantidadprod : integer;
	precioprod : real;
	modificado : boolean;
begin
	modificado := false;
	write('Nombre del producto que desea modificar: ');
	readln(nombreprod);
	writeln;
	buscar_producto(entrada, nombreprod, tammaxcesta, idproducto);
	if idproducto = 0 then
		writeln('Producto no encontrado.')
	else
	begin
		repeat
			write('Indique el atributo que desee modificar - nombre, cantidad o precio (N/C/P): ');
			readln(atributo);
			writeln;
			case atributo of
				'N' , 'n' :
				begin
					write('Inserte el nuevo nombre: ');
					readln(nombreprod);
					entrada[idproducto].nombre := nombreprod;
					modificado := true;
				end;
				'C' , 'c' :
				begin
					write('Inserte la nueva cantidad: ');
					readln(cantidadprod);
					entrada[idproducto].cantidad := cantidadprod;
					modificado := true;
				end;
				'P' , 'p' :
				begin
					write('Inserte el nuevo precio: ');
					readln(precioprod);
					entrada[idproducto].precio := precioprod;
					modificado := true
				end
				else
				begin
					writeln('Por favor, introduzca una opcion valida.');
					writeln;
				end;
			end;
		until modificado = true;
		writeln;
		writeln('Producto modificado.');
		writeln;
	end;
end;

(*-- Variables del módulo principal --*)
Var
	cesta1 : cesta;
	
	opcion : integer;
	
	tamcesta : integer;

(*-- Función principal. --*)
begin
	(*-- Inicialización de variables. --*)
	inicializa_cesta(cesta1, tammaxcesta);
	
	repeat
		(*-- Selección de opciones. --*)
		writeln('Escoja una opcion:');
		writeln;
		
		writeln('Añadir producto a la cesta (1)');
		writeln('Eliminar producto de la cesta (2)');
		writeln('Mostrar cesta (3)');
		writeln('Modificar producto de la cesta (4)');
		writeln('Contar productos de la cesta (5)');
		writeln('Salir del programa (6)');
		writeln;
		
		write('Opcion: ');
		readln(opcion);
		writeln;
		
		(*-- Se realiza la acción elegida. --*)
		case opcion of
			1 : incluir_producto_en_cesta(cesta1, tammaxcesta);
			2 :
			begin
				cuenta_productos(cesta1, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
					eliminar_producto_de_cesta(cesta1, tammaxcesta);
			end;
			3 :
			begin
				cuenta_productos(cesta1, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
					mostrar_cesta(cesta1, tammaxcesta);
			end;
			4 :
			begin
				cuenta_productos(cesta1, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
					modificar_producto(cesta1, tammaxcesta);
			end;
			5 :
			begin
				cuenta_productos(cesta1, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
					writeln('Hay un total de ', tamcesta, ' productos en la cesta.');
			end;
		end;
		writeln;
	until opcion = 6;
end.