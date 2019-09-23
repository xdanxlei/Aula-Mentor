(*
	Fichero: Unidad6_7_optativa.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Suma, resta, multiplica y divide dos números.
	*)

program Operaciones;
	
(*-- Funciones y procedimientos -- *) 

(*Procedimiento calculo: opera usando los números.*)
Procedure calculo(primer_numero:real;segundo_numero:real;VAR suma:real;VAR resta:real;VAR producto:real;VAR cociente:real);
begin
	suma := primer_numero + segundo_numero;
	resta := primer_numero - segundo_numero;
	producto := primer_numero * segundo_numero;
	cociente := primer_numero / segundo_numero;
end;

(*Procedimento presenta_resultados: escribe los resultados en la pantalla.*)
Procedure presenta_resultados(suma:real;resta:real;producto:real;cociente:real);
begin
	writeln;
	writeln('Suma: ',suma:0:99);
	writeln('Resta: ',resta:0:99);
	writeln('Multiplicacion: ',producto:0:99);
	writeln('Division: ',cociente:0:99);
	readln;
end;

(*-- Variables Globales -- *)  
var	
  primer_numero:real;
  segundo_numero:real;
  suma:real;
  resta:real;
  producto:real;
  cociente:real;
	
(*-- Programa Principal -- *)  		
begin
	(* Solicitud de los datos *)
	writeln('Introduzca el primer numero: ');
	readln(primer_numero);
	writeln('Introduzca el segundo numero: ');
	readln(segundo_numero);
	
	calculo(primer_numero,segundo_numero,suma,resta,producto,cociente);
	
	(* Impresión del resultado de la suma por pantalla *)
	presenta_resultados(suma,resta,producto,cociente); 
end.