(*
	Fichero: Unidad5_1_6.pas
	Fecha: 01/05/2019
	Autor: Daniel García Zambrano
	Mail: metroid.xdan@gmail.com
	Descripción: Realiza cuatro tipos de operaciones. Funciona tantas veces como se requiera usando un bucle while-do.
	*)
	
Program Unidad5_1_6;

Var
	a:real;
	b:real;
	opcion:string;
	res:real;
begin
	(*Negando un bucle while-do lo convierto en algo parecido al bucle repeat-until. 
	Tiene lugar al menos una iteración porque "opcion" nunca puede tener un valor desde el principio.*)
	while not (opcion = 'S') and not (opcion = 's') do
		(*El bucle while-do necesita begin.*)
		begin
			(*A partir de aquí todo es idéntico.*)
			write('Introduzca el primer operando: '); 
			readln(a); 
			write('Introduzca el segundo operando: '); 
			readln(b); 
			writeln(' Opciones: S(sumar), R(restar), M(multiplicar), D(dividir)'); 
			readln(opcion); 
			case (opcion) of 
				'S','s' : res:= a+b; 
				'R','r' : res:= a-b; 
				'M','m' : res:= a*b; 
				'D','d' : res:= a/b; 
			end; 
			writeln(' El resultado es ', res:0:99); 
			write(' Terminar (S/N)?: '); 
			readln(opcion);
		end;
end.
