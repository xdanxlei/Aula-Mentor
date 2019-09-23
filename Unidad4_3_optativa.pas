(*
	Fichero: Unidad4_3_optativa.pas
	Fecha: 27/04/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide datos al usuario y los muestra por pantalla.
	*)
	

Program coches;

Var
   agno:  integer;
   precio:     real;
   marca: string[40];
Begin
   writeln('Introduzca el agno en el que compro el coche y el precio:');
   readln(agno,precio);
   writeln('Introduzca la marca:  ');
   readln(marca);
   writeln();
   writeln('Compro el coche ',marca,' el agno ',agno, ' y le costo  ',precio:7:2);
   readln
end.