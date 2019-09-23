(*
	Fichero: Unidad5_8_optativa.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Pide el tipo y la duración de llamadas hasta que se inserta el valor 0. Al terminar, muestra el número de llamadas, la duración total y la duración media por tipo de llamada.
	*)
	
Program Unidad5_8_optativa;

Var 
	(*Datos a insertar.*)
	duracion:real; (*Duración insertada por el usuario.*)
	tipo:char; (*Tipo de llamada.*)
	
	(*General.*)
	duracion_total:real; (*Suma de todas las duraciones insertadas por el usuario.*)
	llamadas:integer; (*Número total de llamadas insertadas.*)
	duracion_media:real; (*Media de la duración de todas las llamadas.*)
	caracter_correcto:boolean; (*Comprueba si el caracter introducido se corresponde a algún tipo de llamada.*)
	
	(*Nacional.*)
	l_nacional:integer; (*Llamadas.*)
	dt_nacional:real;  (*Duración total.*)
	dm_nacional:real;  (*Duración media.*)
	
	(*Provincial.*)
	l_provincial:integer; 
	dt_provincial:real; 
	dm_provincial:real;
	
	(*Local.*)
	l_local:integer; 
	dt_local:real; 
	dm_local:real;

begin
	(*-- Inicializar variables. --*)
	llamadas := 0;
	duracion_total := 0;
	duracion_media := 0;
	
	l_nacional := 0;
	dt_nacional := 0;
	dm_nacional := 0;
	
	l_provincial := 0; 
	dt_provincial := 0; 
	dm_provincial := 0;
	
	l_local := 0; 
	dt_local := 0; 
	dm_local := 0;
	
	(*-- Bucle que pide la duración de las llamadas. --*)
	repeat
		(*-- Se piden los datos. --*)
		repeat
			writeln('Inserte el tipo de la llamada - nacional, provincial o local: (N/P/L)'); (*Se pide el tipo de la llamada.*)
			readln(tipo); (*Se inserta el tipo de la llamada.*)
			
			(*Comprueba si el caracter introducido se corresponde a algún tipo de llamada.*)
			caracter_correcto := (tipo = 'N') or (tipo = 'n') or (tipo = 'P') or (tipo = 'p') or (tipo = 'L') or (tipo = 'l');
			
			(*Mensaje de error si el tipo de llamada no es válido.*)
			if not caracter_correcto then
				writeln('Por favor, introduzca un tipo de llamada valido.');
			writeln;
			
		until caracter_correcto; (*Repetir la entrada de tipo de llamada hasta que se introduzca un tipo correcto.*)
		
		writeln('Inserte la duracion de la llamada (inserte 0 para terminar):'); (*Se pide la duración de la llamada.*)
		readln(duracion); (*Se inserta la duración de la llamada.*)
		writeln;
		
		(*-- Si la duración es mayor que 0 y el caracter es correcto, procede a hacer las cuentas pertinentes. --*)
		if (duracion > 0) and caracter_correcto then
			begin
				llamadas := llamadas + 1; (*+1 al conteo de llamadas*)
				duracion_total := duracion_total + duracion; (*Valor de la llamada añadido a la duración total*)
				(*Comprueba el tipo de llamada.*)
				case (tipo) of
					'N' , 'n' :
						begin
							l_nacional := l_nacional + 1;
							dt_nacional := dt_nacional + duracion;
						end;
					'P' , 'p' :
						begin
							l_provincial := l_provincial + 1;
							dt_provincial := dt_provincial + duracion;
						end;
					'L' , 'l' :
						begin
							l_local := l_local + 1;
							dt_local := dt_local + duracion;
						end;
				end;
			end;
	until (duracion <= 0); (*El bucle dura hasta que duracion sea 0 o menor, como se pide en el ejercicio.*)
	
	(*-- Se muestran los resultados. --*)
	if (llamadas = 0) then (*Si no se ha introducido ninguna llamada, se informa del hecho al usuario.*)
		writeln('No se ha introducido ninguna llamada.')
	else (*Si se ha introducido alguna llamada, se muestran los resultados al usuario.*)
		begin
			(*Nacional.*)
			writeln('Nacionales:');
			writeln;
			if (l_nacional <> 0) then (*Evita una división entre 0.*)
				dm_nacional := dt_nacional / l_nacional; (*Cálculo de la duración media.*)
			writeln('Numero de llamadas: ', l_nacional); (*Se muestra el total de llamadas.*)
			writeln('Duracion total: ', dt_nacional:0:99); (*Se muestra la duración total de las llamadas.*)
			writeln('Duracion media: ', dm_nacional:0:99); (*Se muestra la duración media de las llamadas.*)
			
			writeln;
			writeln;
			
			(*Provincial.*)
			writeln('Provinciales:');
			writeln;
			if (l_provincial <> 0) then
				dm_provincial := dt_provincial / l_provincial;
			writeln('Numero de llamadas: ', l_provincial);
			writeln('Duracion total: ', dt_provincial:0:99);
			writeln('Duracion media: ', dm_provincial:0:99);
			
			writeln;
			writeln;
			
			(*Local.*)
			writeln('Locales:');
			writeln;
			if (l_local <> 0) then
				dm_local := dt_local / l_local;
			writeln('Numero de llamadas: ', l_local);
			writeln('Duracion total: ', dt_local:0:99);
			writeln('Duracion media: ', dm_local:0:99);
			
			writeln;
			writeln;
			writeln;
			
			(*General.*)
			writeln('Generales:');
			writeln;
			duracion_media := duracion_total / llamadas;
			writeln('Numero de llamadas: ', llamadas);
			writeln('Duracion total: ', duracion_total:0:99);
			writeln('Duracion media: ', duracion_media:0:99);
		end;
	readln;
end.
