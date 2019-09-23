Program Sumatorio;

(*Función suma: suma de dos parámetros.*)
Function suma(sumando1, sumando2: Integer):Integer;

Begin
	sumando1:= sumando1 +sumando2;
	suma:= sumando1;
End;

(*Declaración de variables.*)
Var 
	primer_sumando:integer; (*Primer sumando.*)
	segundo_sumando:integer; (*Segundo sumando.*)
	resultado:integer; (*Valor presentado por el programa como solución.*)

(*Función principal.*)
begin
	(*Lectura de datos.*)
	write('Introduzca primer sumando : ');
	readln(primer_sumando);
	write('Introduzca segundo sumando : ');
	readln(segundo_sumando);
	
	(*Cálculo de resultados.*)
	resultado:= suma(primer_sumando,segundo_sumando);
	
	(*Presentación de resultados.*)
	writeln;
	writeln('Total = ',resultado);
end.