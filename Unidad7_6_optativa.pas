(*
	Fichero: Unidad7_6_optativa.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Almacena y muestra por pantalla conjutos de cuadros enumerados y sus precios. Muestra el precio total de cada colección y los cuadros
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

(*Función suma_coleccion: devuelve el precio total de una colección.*)
Function suma_coleccion(precios:coleccion; tamcoleccion:integer) : real;
Var
	i:integer;
begin
	suma_coleccion := 0;
	for i:= 1 to tamcoleccion do
		suma_coleccion := suma_coleccion + precios[i];
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
	precios1 : coleccion; (*Tabla de precios de la primera colección*)
	precios2 : coleccion; (*Tabla de precios de la segunda colección.*)
	 
	suma1 : real; (*Precio total de la colección 1.*)
	suma2 : real; (*Precio total de la colección 1.*)

	buscar : real; (*Precio a buscar entre todos los cuadros.*)
        
(*-- Programa Principal -- *)
Begin
	(*-- Lectura de datos. --*)
	writeln('Coleccion 1:');
	writeln;
	lee_tabla(precios1, tamcoleccion);
	writeln;
	
	writeln('Coleccion 2:');
	writeln;
	lee_tabla(precios2, tamcoleccion);
	writeln;
	
	(*-- Cálculo de resultados. --*)
	suma1 := suma_coleccion(precios1, tamcoleccion);
	suma2 := suma_coleccion(precios2, tamcoleccion);
	
	(*-- Presentación de resultados. --*)

	(*-- Colección más valiosa --*)
	if suma1<suma2 then
		writeln('La coleccion 2 es mas valiosa que la coleccion 1.');
	
	if suma1=suma2 then
		writeln('Ambas colecciones tienen el mismo precio.');
	
	if suma1>suma2 then
		writeln('La coleccion 1 es mas valiosa que la coleccion 2.');
	
	
	(*-- Buscar precio. --*)
	writeln;
	repeat
		write('Indique el precio que desea buscar (0 para cerrar el programa): ');
		readln(buscar);
		if buscar<>0 then
		begin
			writeln;
			writeln('Coleccion 1:');
			busca_precio(buscar,precios1,tamcoleccion);
			
			writeln;
			
			writeln('Coleccion 2:');
			busca_precio(buscar,precios2,tamcoleccion);
		end;
	until buscar=0;
End.