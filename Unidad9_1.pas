(*
	Fichero: Unidad9_1.pas
	Fecha: 18/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: maneja los datos de productos en una cesta de compra y permite guardar los mismos en ficheros de datos.
	*)

Program Unidad9_1;

(*-- Constantes globales al programa --*)
Const
	TAMMAXCESTA = 10; (*Tamaño máximo de la tabla cesta.*)

(*-- Tipos globales al programa --*)
Type
	cadena = string[40]; (*Tipo de tabla de caracteres.*)
	
	Tproducto = record (*Tipo de registro que contiene los datos de un producto.*)
		nombre : cadena; (*Nombre del producto.*)
		cantidad : integer; (*Número de unidades a comprar.*)
		precio : real; (*Precio en €.*)
		en_cesta : boolean; (*True si el producto se encuentra en la cesta.*)
	end;
	
	Tcesta = array[0..TAMMAXCESTA] of Tproducto; (*Tabla de productos.*)
	
	Tfichero = file of Tproducto; (*Fichero de productos.*)
	
(*-- Funciones y procedimientos --*)
(*Procedimiento lee_producto: toma los datos de un producto y lo marca como en_cesta.*)
Procedure lee_producto(VAR cesta:Tproducto);
begin
	write('Nombre: ');
	readln(cesta.nombre);
	write('Cantidad a comprar: ');
	readln(cesta.cantidad);
	write('Precio en euros: ');
	readln(cesta.precio);
	cesta.en_cesta := true;
end;

(*Procedimiento inicializa_cesta: asigna false a todas las variables de cesta.*)
Procedure inicializa_cesta(VAR cesta:Tcesta; tammaxcesta:integer);
Var
	i : integer;
begin
	for i := 1 to tammaxcesta do
		cesta[i].en_cesta := false;
end;

(*Procedimiento guarda_cesta: guarda los productos de una cesta en un fichero.*)
Procedure guarda_cesta(cesta:Tcesta; VAR fichero:Tfichero; tamcesta:integer; nombre:cadena);
Var
	i : integer;
begin
	assign(fichero, nombre);
	rewrite(fichero);
	for i:= 1 to tamcesta do
	begin
		if cesta[i].en_cesta then
			write(fichero, cesta[i]);
	end;
	close(fichero);
end;

(*Procedimiento cuenta_productos: devuelve el número de productos en una cesta en los que en_cesta = true.*)
Procedure cuenta_productos(cesta:Tcesta; tammaxcesta:integer; VAR tamcesta:integer);
Var
	i : integer;
begin
	tamcesta := 0;
	for i:= 1 to tammaxcesta do
	begin
		if cesta[i].en_cesta = true then
			tamcesta := tamcesta + 1;
	end
end;

(*Procedimiento busca_libre: busca la primera posición de una cesta en la que en_cesta = false.*)
Procedure busca_libre(cesta:Tcesta; tammaxcesta:integer; VAR libre:integer);
Var
	i : integer;
begin
	libre := 0;
	for i:= 1 to tammaxcesta do
	begin
		if libre = 0 then
		begin
			if cesta[i].en_cesta = false then
				libre := i;
		end;
	end
end;

(*Procedimiento incluir_producto_en_cesta: rellena los datos de un producto de la cesta si hay algún hueco libre.*)
Procedure incluir_producto_en_cesta(VAR cesta:Tcesta; tammaxcesta:integer);
Var
	libre:integer;
begin
	writeln;
	busca_libre(cesta, tammaxcesta, libre);
	if libre = 0 then
		writeln('Cesta llena.')
	else
		lee_producto(cesta[libre]);
end;

(*Procedimiento recupera_cesta: guarda los productos del fichero en una cesta.*)
Procedure recupera_cesta( VAR cesta:Tcesta; VAR fichero:Tfichero; nombre : cadena);
Var
	i : integer;
	tamcesta : integer;
begin
	assign(fichero, nombre);
	reset(fichero);
	tamcesta := filesize(fichero);
	for i:= 1 to tamcesta do
		read(fichero, cesta[i]);
	close(fichero);
end;

(*Procedimiento buscar_producto: devuelve el id del producto buscado o 0 si ninguno coincide.*)
Procedure buscar_producto(cesta:Tcesta; nombreprod:cadena; tammaxcesta:integer; VAR idproducto:integer);
Var
	i : integer;
begin
	idproducto := 0;
	for i:= 1 to tammaxcesta do
	begin
		if (cesta[i].nombre = nombreprod) and cesta[i].en_cesta then
			idproducto := i;
	end
end;

(*Procedimiento eliminar_producto_de_cesta: busca un producto por su nombre y, si lo encuentra, cambia en_cesta a false.*)
Procedure eliminar_producto_de_cesta( VAR cesta:Tcesta; tammaxcesta:integer);
Var
	nombreprod : cadena;
	idproducto : integer;
begin
	write('Nombre del producto que desea eliminar: ');
	readln(nombreprod);
	writeln;
	buscar_producto(cesta, nombreprod, tammaxcesta, idproducto);
	if idproducto = 0 then
		writeln('Producto no encontrado.')
	else
	begin
		cesta[idproducto].en_cesta := false;
		writeln('Producto eliminado.');
		writeln;
	end
end;

(*Procedimiento escribe_producto: muestra los datos de un producto.*)
Procedure escribe_producto(cesta:Tproducto);
begin
	writeln(cesta.nombre,':');
	writeln;
	writeln('Cantidad a comprar: ',cesta.cantidad);
	writeln('Precio: ',cesta.precio:7:2);
end;

(*Procedimiento mostrar_producto: muestra los datos de una variable de una cesta.*)
Procedure mostrar_producto(cesta:Tcesta; indice:integer);
begin
	escribe_producto(cesta[indice]);
end;

(*Procedimiento mostrar_cesta: muestra los productos de una cesta tales que en_cesta = true.*)
Procedure mostrar_cesta(cesta:Tcesta; tammaxcesta:integer);
Var
	i : integer;
begin
	for i:= 1 to tammaxcesta do
	begin
		if cesta[i].en_cesta = true then
		begin
			writeln;
			mostrar_producto(cesta, i);
		end;
	end;
end;

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
	writeln('Salir del programa. (7)'); 
	writeln;
	readln(opcion);
end;

(*Procedimiento llamar_opcion: llama al módulo adecuado para realizar la opción escogida por el usuario.*)
Procedure llamar_opcion(opcion:integer; VAR cesta:Tcesta; tammaxcesta:integer);
Var
	tamcesta : integer;
	fichero : Tfichero;
	nombre : cadena;
	pedir : char;
begin
	case opcion of
			1 : 
			begin
				write('Nombre del fichero: ');
				readln(nombre);
				recupera_cesta(cesta, fichero, nombre);
				writeln;
				writeln('Cesta ', nombre, ' cargada.');
			end;
			2 : 
			begin
				inicializa_cesta(cesta, tammaxcesta);
				writeln;
				writeln('Nueva cesta comenzada.');
			end;
			3 : 
			begin
				incluir_producto_en_cesta(cesta, tammaxcesta);
				writeln;
				writeln('Producto añadido.');
			end;
			4 :
			begin
				cuenta_productos(cesta, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
					eliminar_producto_de_cesta(cesta, tammaxcesta);
			end;
			5 : 
			begin
				write('Nombre del fichero: ');
				readln(nombre);
				guarda_cesta(cesta, fichero, tammaxcesta, nombre);
				writeln;
				writeln('Cesta guardada.');
			end;
			6 : 
			begin
			cuenta_productos(cesta, tammaxcesta, tamcesta);
				if tamcesta = 0 then
					writeln('No hay productos en la cesta.')
				else
				begin
					mostrar_cesta(cesta, tammaxcesta);
					writeln;
					write('Pediras esta cesta (S/N): ');
					readln(pedir);
					if (pedir = 'S') or (pedir = 's') then
					begin
						writeln;
						writeln('Cesta pedida.');
					end;
				end;
			end;
	end;
end;	

(*Procedimiento bucle_opciones: muestra las opciones en bucle hasta que se escoge una opción válida.*)
Procedure bucle_opciones( VAR opcion : integer);
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
end;

(*-- Variables del módulo principal --*)
Var 
	fichero : Tfichero;
	cesta : Tcesta;
	opcion : integer;

(*-- Función principal. --*)
begin
	(*-- Inicialización de variables. --*)
	inicializa_cesta(cesta, tammaxcesta);
	
	repeat
	
		(*-- Lectura de datos. --*)
		bucle_opciones(opcion);
		writeln;
		
		(*-- Presentación de resultados. --*)
		llamar_opcion(opcion, cesta, tammaxcesta);
		writeln;
		
	until opcion = 7;
	
	writeln('Fin del programa.');
	readln;
end.