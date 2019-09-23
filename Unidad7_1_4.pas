(*
	Fichero: Unidad7_1_4.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Invierte una tabla de caracteres.
	*)

Program Unidad7_1_4;

Type
	cadena=string[50];
	
(*Procedimiento Invertir: invierte una tabla de caracteres.*)
Procedure Invertir(VAR entrada:cadena;size:integer);
Var
	i:integer;
	aux:char;
begin
	(*Realiza la inversión.*)
	for i:= 1 to size div 2 do
	 begin
		aux := entrada[i];
		entrada[i] := entrada[size+1-i];
		entrada[size+1-i] := aux;
	 end;
end;

(*-- Declaración de variables. --*)
Var 
	frase:cadena;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	repeat
		writeln;
		writeln('Escriba una frase:');
		readln(frase);
		writeln;
		if ord(frase[0])>40 then
			writeln('Su frase es demasiado larga.');
	until ord(frase[0])<=40;
	
	(*-- Cálculo de resultados. --*)
	invertir(frase,ord(frase[0]));
	
	(*-- Presentación de resultados. --*)
	writeln;
	writeln('La frase invertida es:');
	writeln(frase);
	readln;
end.