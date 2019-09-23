(*
	Fichero: Unidad5_2_3.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide la duración de llamadas hasta que se inserta el valor 0. Al terminar, muestra el número de llamadas, la duración total y la duración media.
	*)
	
Program Unidad5_2_3;

Var 
	duracion:real; (*Duración insertada por el usuario.*)
	duracion_total:real; (*Suma de todas las duraciones insertadas por el usuario.*)
	llamadas:integer; (*Número total de llamadas insertadas.*)
	duracion_media:real; (*Media de la duración de todas las llamadas.*)

begin
	llamadas := 0;
	duracion_total := 0;
	(*Bucle que pide la duración de las llamadas.*)
	repeat
		writeln('Inserte la duracion de la llamada (inserte 0 para terminar):'); (*Se pide la duración de la llamada.*)
		readln(duracion); (*Se inserta la duración de la llamada.*)
		(*Si la duración es mayor que 0, procede a hacer las cuentas pertinentes.*)
		if (duracion > 0) then
			begin
				llamadas := llamadas + 1; (*+1 al conteo de llamadas*)
				duracion_total := duracion_total + duracion; (*Valor de la llamada añadido a la duración total*)
			end;
	until (duracion <= 0); (*El bucle dura hasta que duracion sea 0 o menor, como se pide en el ejercicio.*)
	if (llamadas = 0) then (*Si no se ha introducido ninguna llamada, se informa del hecho al usuario.*)
		writeln('No se ha introducido ninguna llamada.')
	else (*Si se ha introducido alguna llamada, se muestran los resultados al usuario.*)
		begin
			duracion_media := duracion_total / llamadas; (*Cálculo de la duración media.*)
			writeln('Numero de llamadas: ', llamadas); (*Se muestra el total de llamadas.*)
			writeln('Duracion total: ', duracion_total:0:99); (*Se muestra la duración total de las llamadas.*)
			writeln('Duracion media: ', duracion_media:0:99); (*Se muestra la duración media de las llamadas.*)
		end;
	readln;
end.
