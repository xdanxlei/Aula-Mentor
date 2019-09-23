(*
	Fichero: Unidad5_2_3.pas
	Fecha: 01/05/2019
	Autor: Daniel Garc�a Zambrano
	Mail: metroid.xdan@gmail.com
	Descripci�n: Pide la duraci�n de llamadas hasta que se inserta el valor 0. Al terminar, muestra el n�mero de llamadas, la duraci�n total y la duraci�n media.
	*)
	
Program Unidad5_2_3;

Var 
	duracion:real; (*Duraci�n insertada por el usuario.*)
	duracion_total:real; (*Suma de todas las duraciones insertadas por el usuario.*)
	llamadas:integer; (*N�mero total de llamadas insertadas.*)
	duracion_media:real; (*Media de la duraci�n de todas las llamadas.*)

begin
	llamadas := 0;
	duracion_total := 0;
	(*Bucle que pide la duraci�n de las llamadas.*)
	repeat
		writeln('Inserte la duracion de la llamada (inserte 0 para terminar):'); (*Se pide la duraci�n de la llamada.*)
		readln(duracion); (*Se inserta la duraci�n de la llamada.*)
		(*Si la duraci�n es mayor que 0, procede a hacer las cuentas pertinentes.*)
		if (duracion > 0) then
			begin
				llamadas := llamadas + 1; (*+1 al conteo de llamadas*)
				duracion_total := duracion_total + duracion; (*Valor de la llamada a�adido a la duraci�n total*)
			end;
	until (duracion <= 0); (*El bucle dura hasta que duracion sea 0 o menor, como se pide en el ejercicio.*)
	if (llamadas = 0) then (*Si no se ha introducido ninguna llamada, se informa del hecho al usuario.*)
		writeln('No se ha introducido ninguna llamada.')
	else (*Si se ha introducido alguna llamada, se muestran los resultados al usuario.*)
		begin
			duracion_media := duracion_total / llamadas; (*C�lculo de la duraci�n media.*)
			writeln('Numero de llamadas: ', llamadas); (*Se muestra el total de llamadas.*)
			writeln('Duracion total: ', duracion_total:0:99); (*Se muestra la duraci�n total de las llamadas.*)
			writeln('Duracion media: ', duracion_media:0:99); (*Se muestra la duraci�n media de las llamadas.*)
		end;
	readln;
end.
