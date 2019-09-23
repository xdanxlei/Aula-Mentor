(*
	Fichero: Unidad7_5_optativa.pas
	Fecha: 13/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Recoge datos de aprobados de un número variable de alumnos y los muestra por pantalla.
	*)

Program Unidad7_5_optativa;

(*-- Constantes globales al programa --*)
Const
	X=4; (*Longitud horizontal de la tabla.*)
	Y=3; (*Longitud vertical de la tabla.*)
	max=100; (*Máximo de alumnos.*)

(*-- Tipos globales al programa --*)
Type
	tabla=array[1..X,1..Y] of boolean;
	clase=array[1..max] of tabla;
 
(*-- Funciones y procedimientos --*)

(*Procedimiento rellenar_tabla: pide al usuario el contenido de una tabla.*)
Procedure rellenar_tabla(VAR aprobado:tabla; X:integer; Y:integer);
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

(*Procedimiento Escribir_tabla: escribe todo el contenido de una tabla.*)
Procedure Escribir_tabla(bool:tabla; X:integer; Y:integer);
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

(*Procedimiento leer_clase: pide los aprobados de cada alumno y los inserta en una tabla.*)
Procedure leer_clase(VAR alumnos:clase; num_alumnos:integer; X:integer; Y:integer);
Var
	i:integer;
begin
	for i:= 1 to num_alumnos do
	begin
		writeln;
		writeln('Alumno ',i,':');
		writeln;
		rellenar_tabla(alumnos[i],X,Y);
	end;
end;

(*Procedimiento escribir_clase: escribe las tablas correspondientes a todos los alumnos.*)
Procedure escribir_clase(alumnos:clase; num_alumnos:integer; X:integer; Y:integer);
Var
	i:integer;
begin
	for i:= 1 to num_alumnos do
	begin
		writeln('Alumno ',i,':');
		writeln;
		escribir_tabla(alumnos[i],X,Y);
	end;
end;

(*-- Variables del módulo principal --*)
Var 
	aprobados:tabla;(*Tabla de notas.*)
	alumnos:clase; (*Tabla de tablas de notas.*)
	num_alumnos:integer; (*Número de alumnos en la clase.*)

(*-- Función principal. --*)
begin
	(*-- Lectura de datos. --*)
	write('Escriba el numero de alumnos: ');
	readln(num_alumnos);
	leer_clase(alumnos,num_alumnos,X,Y);
	
	(*-- Cálculo de resultados. --*)
	
	
	(*-- Presentación de resultados. --*)
	writeln;
	escribir_clase(alumnos,num_alumnos,X,Y);
	readln;
end.