(*
	Fichero: Unidad6_1_optativa.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: calcula la diferencia entre dos números y la muestra por pantalla.
	*)

Program CalculaResta;

(*Procedimiento MuestraPorPantalla: muestra la diferencia por pantalla.*)
Procedure MuestraPorPantalla(resultado:integer);
Begin
	Writeln('El resultado es ',resultado);
	readln;
End;

(*Procedimiento CalculaResta: calcula la diferencia y la muestra por pantalla.*)
Procedure CalculaResta(primer_valor:integer;segundo_valor:integer);
Var
	CalculaResta:integer;
Begin
	CalculaResta:=primer_valor-segundo_valor;
	MuestraPorPantalla(CalculaResta);
End;

(*Declaración de variables.*)
Var 
	Valor1:integer; (*Minuendo.*)
	Valor2:integer; (*Sustraendo.*)
	
(*Función principal.*)
begin
	(*Lectura de datos.*)
	write('Introduzca el primer numero : ');
	readln(Valor1);
	write('Introduzca la cantidad a restar : ');
	readln(Valor2);
	
	(*Presentación de resultados.*)
	CalculaResta(Valor1,Valor2);
end.