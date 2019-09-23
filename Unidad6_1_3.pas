(*
	Fichero: Unidad6_1_3.pas
	Fecha: 11/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Aplica iva al precio de un producto. El usuario escoge el valor el precio y del impuesto.
	*)

Program Unidad6_1_3;

(*Función PVP: calcula el precio final del producto.*)
Function PVP(valorprod: real; ivaprod: real) : real;
Var
    total_iva : real;
begin
	PVP := 0;
    total_iva := valorprod*ivaprod/100;
    PVP := valorprod + total_iva;
End;

(*Declaración de variables.*)
Var 
	precio:real; (*Precio del producto.*)
	iva:real; (*Impuesto aplicado.*)

(*Función principal.*)
begin
	(*Lectura de datos.*)
	write('Introduzca el precio del producto: ');
	readln(precio);
	write('Introduzca el iva a aplicar (en %): ');
	readln(iva);
	
	(*Presentación de resultados.*)
	writeln;
	writeln('Resultado: ',PVP(precio,iva):0:99);
	readln;
end.