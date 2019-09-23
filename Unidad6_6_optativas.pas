(*
	Fichero: Unidad6_6_optativas.pas
	Fecha: 12/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Convierte de pesetas a euros o de euros a pesetas tantas veces como se desee.
	*)

Program Unidad6_6_optativas;

(*Función calcula_euros: convierte una cantidad de pesetas a euros.*)
Function calcula_euros(cantidad:real):real;
begin
	calcula_euros := 0;
	calcula_euros := cantidad / 166.386;
end;

(*Función calcula_euros: convierte una cantidad de euros a pesetas.*)
Function calcula_pesetas(cantidad:real):real;
begin
	calcula_pesetas := 0;
	calcula_pesetas := cantidad * 166.386;
end;

(*Declaración de variables.*)
Var 
	tipo:char; (*1: pesetas. 2: euros.*)
	cantidad:real; (*Cantidad de pesetas o euros.*)
	continuar:char; (*"N" para el programa.*)

(*Función principal.*)
begin
	repeat
		(*-- Lectura de datos. --*)
		
		(*Tipo de moneda.*)
		repeat
			writeln;
			writeln('Para convertir:');
			writeln('  1. Pasar de pesetas a euros.');
			writeln('  2. Pasar de euros a pesetas.');
			writeln;
			write('             Opcion: ');
			readln(tipo);
			writeln;
			if not (tipo='1') and not (tipo='2') then
				writeln('Por favor, introduzca una opcion valida.');
		until (tipo='1') or (tipo='2');
		
		(*Cantidad a convertir.*)
		writeln;
		case tipo of
			'1' : write('Introduzca cantidad en pesetas: ');
			'2' : write('Introduzca cantidad en euros: ');
		end;
		readln(cantidad);
		
		(*-- Presentación de resultados. --*)
		writeln;
		case tipo of
			'1' : writeln('Son',calcula_euros(cantidad):0:2,' euros.');
			'2' : writeln('Son',calcula_pesetas(cantidad):0:2,' pesetas.');
		end;
		writeln;
		
		(*-- Reinicio. --*)
		write('Continuar (S/N)? ');
		readln(continuar);
	until (continuar='N') or (continuar='n');
end.