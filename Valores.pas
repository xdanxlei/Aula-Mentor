program valores;
var
	letra:char;
	numero:integer;
	valornumerico:integer;
	valorcaracter:char;
begin
	writeln('Introduzca una letra: ');
	readln(letra);
	valornumerico:=ord(letra);
	writeln('El valor numerico de su letra es: ',valornumerico);
	writeln('Introduzca un numero: ');
	readln(numero);
	valorcaracter:=Chr(numero);
	writeln('Su numero corresponde al caracter: ',valorcaracter);
	readln;
end.