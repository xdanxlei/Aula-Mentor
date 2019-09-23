(*
	Fichero: Unidad7_2.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Almacena y muestra por pantalla un conjuto de cuadros enumerados y sus precios. Muestra el precio total de la colección y los cuadros
	con precio más alto y más bajo. Permite al usuario buscar cuadros con un precio específico.
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

(*Procedimiento imprime_tabla: escribe el precio de cada cuadro de una colección junto a su índice.*)
Procedure imprime_tabla(precios:coleccion; tamcoleccion:integer);
Var
	i:integer;
begin
	writeln('Cuadros:');
	for i:= 1 to tamcoleccion do
		writeln(i,' - ',precios[i]:0:2);
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

(*Procedimiento limites: calcula el precio mínimo y el máximo de la colección y los cuadros a los que corresponde.*)
Procedure limites(precios:coleccion; tamcoleccion:integer; VAR minimo:real; VAR cuadro_minimo:integer; VAR maximo:real; VAR cuadro_maximo:integer);
Var
	i:integer;
begin
	minimo :=  precios[1];
	cuadro_minimo := 1;
	maximo :=  precios[1];
	cuadro_maximo := 1;
	for i:= 2 to tamcoleccion do
	begin
		if (minimo > precios[i]) then
		begin
			minimo := precios[i];
			cuadro_minimo := i;
		end;
		if (maximo < precios[i]) then
		begin
			maximo := precios[i];
			cuadro_maximo := i;
		end;
	end;
end;

(*Procedimiento busca_precio: notifica al usuario de qué cuadros cuyo precio coinciden con el insertado.*)
Procedure busca_precio(buscar:real; precios:coleccion; tamcoleccion:integer);
Var
	i:integer;
	exito:boolean; (*Regula si aparece un mensaje al final del procedimiento.*)
begin
	exito := false;
	writeln;
	for i:= 1 to tamcoleccion do
	begin
		if buscar=precios[i] then
		begin
			writeln('El precio del cuadro ',i,' coincide con el precio indicado.');
			writeln;
			exito := true;
		end;
	end;
	if not exito then
		writeln('Ningun precio coincide con el indicado.');
	writeln;
end;

(*-- Variables del módulo principal -- *)
Var 
  precios : coleccion; (*Tabla de precios de los cuadros.*)
  minimo : real; (*Precio mínimo entre todos los cuadros.*)
  cuadro_minimo : integer; (*Número del cuadro con el menor precio.*)
  maximo : real; (*Precio máximo entre todos los cuadros.*)
  cuadro_maximo : integer; (*Número del cuadro con el mayor precio.*)
  buscar : real; (*Precio a buscar entre todos los cuadros.*)
        
(*-- Programa Principal -- *)
Begin
	(*-- Lectura de datos. --*)
	lee_tabla(precios, tamcoleccion);

	(*-- Cálculo de resultados. --*)
	limites(precios, tamcoleccion, minimo, cuadro_minimo, maximo, cuadro_maximo);

	(*-- Presentación de resultados. --*)
	(*Precio por cuadro.*)
	imprime_tabla(precios, tamcoleccion);
	
	(*Precio total de la colección.*)
	writeln('Precio total de la coleccion: ',suma_coleccion(precios,tamcoleccion):0:2);
	writeln;
	writeln('El precio maximo es ',maximo:5:2,', correspondiente al cuadro ',cuadro_maximo,', y el minimo es ',minimo:0:2,',');
	writeln('correspondiente al cuadro ',cuadro_minimo,'.');
	
	(*-- Buscar precio. --*)
	writeln;
	repeat
		write('Indique el precio que desea buscar (0 para cerrar el programa): ');
		readln(buscar);
		if buscar<>0 then
			busca_precio(buscar,precios,tamcoleccion);
	until buscar=0;
End.