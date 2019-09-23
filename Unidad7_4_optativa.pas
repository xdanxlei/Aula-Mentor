(*
	Fichero: Unidad7_4_optativa.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: 
	*)

Program Unidad7_4_optativa;

(*-- Constantes globales al programa --*)
Const
	X=4; (*Longitud horizontal de la tabla.*)
	Y=3; (*Longitud vertical de la tabla.*)

(*-- Tipos globales al programa --*)
Type
	tabla=array[1..X,1..Y] of boolean;
 
(*-- Funciones y procedimientos --*)

Procedure rellenar_tabla(VAR aprobado:tabla;X:integer;Y:integer);
Var
	i:integer;
	j:integer;
	nota:char;
begin
	writeln('Por favor, inserte los aprobados (S/N):');
	for i := 1 to X do
	begin
		writeln;
		case i of
			1 : writeln('Primer parcial:');
			2 : writeln('Segundo parcial:');
			3 : writeln('Junio:');
			4 : writeln('Septiembre:');
		end;
		writeln;
		for j := 1 to Y do
		begin
			case j of
				1 : write('Practica: ');
				2 : write('Trabajo: ');
				3 : write('Examen: ');
			end;
			readln(nota);
			case nota of
				'S','s' : aprobado[i,j] := true;
				'N','n' : aprobado[i,j] := false;
			end;
		end;
	end
end;

(*Procedimiento Escribir_tabla: escribe todos los números de una tabla de números.*)
Procedure Escribir_tabla(bool:tabla;X:integer;Y:integer);
Var
	i:integer;
	j:integer;
	nota:string[2];
begin
	writeln('          Primer parcial    Segundo parcial          Junio             Septiembre');
	for i:= 1 to Y do
	begin
		case i of
			1 : write('Practica       ');
			2 : write('Trabajo        ');
			3 : write('Examen         ');
		end;
		for j := 1 to X do
		begin
			case bool[j,i] of
				true : nota := 'Si';
				false :  nota := 'No';
			end;
			write(nota,'                  ');
		end;
		writeln;
	end;
	writeln;
end;

(*-- Variables del módulo principal --*)
Var 
	aprobados:tabla;

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	rellenar_tabla(aprobados,X,Y);
	
	(*-- Cálculo de resultados. --*)
	
	
	(*-- Presentación de resultados. --*)
	writeln;
	escribir_tabla(aprobados,X,Y);
	readln;
end.