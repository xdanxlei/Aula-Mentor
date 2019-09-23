(*
	Fichero: Unidad6_1_6.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Tres módulos distintos devuelven el área de un rectángulo de maneras distintas.
	*)

Program Unidad6_1_6;

(*Procedimiento Pantalla: devuelve el área directamente por pantalla.*)
Procedure Pantalla(altura:real;base:real);
begin
    writeln(altura*base:0:99);
End;

(*Función Resultado: devuelve el área como resultado del módulo.*)
Function Resultado(altura:real;base:real) : real;
begin
    Resultado := 0;
	Resultado := altura*base;
End;

(*Procedimiento Parametro: devuelve el área como parámetro.*)
Procedure Parametro(altura:real;base:real;VAR area:real);
begin
    area := altura*base;
End;

(*Declaración de variables.*)
Var 
	altura:real;
	base:real;
	area:real;

(*Función principal.*)
begin
	(*Lectura de datos.*)
	write('Altura del rectangulo: ');
	readln(altura);
	write('Base del rectangulo: ');
	readln(base);
	
	(*Cálculo de resultados.*)
	Parametro(altura,base,area); (*El parametro "area" es alterado por el procedimiento.*)
	
	(*Presentación de resultados.*)
	writeln;
	
	write('Modulo 1: ');
	Pantalla(altura,base); (*El propio módulo Pantalla escribe el resultado.*)
	
	writeln;
	
	writeln('Modulo 2: ',Resultado(altura,base):0:99);  (*Escribe el resultado de la función Resultado.*)
	
	writeln;
	
	writeln('Modulo 3: ',area:0:99);  (*El parametro "area" ha sido alterado por el procedimiento Parametro.*)
	readln;
end.