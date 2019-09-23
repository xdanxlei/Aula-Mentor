(*
	Fichero: Unidad8_1_optativa.pas
	Fecha: 17/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: recoge los datos de dos cuadros y los muestra por pantalla junto a la suma de sus precios.
	*)

Program Unidad8_1_optativa;
	

(*-- Tipos globales al programa --*)
Type
	cadena = string [40];
	
	Tcuadro = record
		Numero : integer;
		Titulo : cadena;
		Autor : cadena;
		Precio : real;
	end;
 
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

(*-- Variables -- *)
Var 
  cuadro1: Tcuadro;
  cuadro2: Tcuadro;
  suma   : real;
        
(*-- Programa Principal -- *)
Begin
  (* -- Petición de datos --*)
  writeln('>Datos primer cuadro');
  writeln;
  lee_cuadro(cuadro1);
  writeln;
  writeln('>Datos segundo cuadro');  
  writeln;
  lee_cuadro(cuadro2);
  writeln;
  writeln;
  
  (* -- Cálculo de la suma  --*)
	suma := cuadro1.precio + cuadro2.precio;
 
  (* -- Presentación de resultados --*) 
  writeln('>Datos de los cuadros');
  writeln;
  imprime_cuadro(cuadro1);
  imprime_cuadro(cuadro2); 
  writeln('> La suma es: ', suma:0:2);
  readln;
End.