Program Banco;

(*Procedure ingreso: calcula el nuevo saldo.*)
Procedure ingreso(VAR saldo: real; ingreso: real);
Begin
   if (ingreso >0) then
      saldo := saldo + ingreso
   else     (* Se resta comision por numeros rojos. *)
      saldo := (saldo + ingreso) - 3 ;
End;

(*Declaración de variables.*)
Var 
	micuenta:real; (*Variable que almacena los datos de entrada y posteriormente los de salida.*)

(*Función principal.*)
begin
	(*Saldo de micuenta corriente *)
	micuenta:= 600; 
	
	(* Hago un ingreso de 500 euros *)
	ingreso(micuenta, 500);
	
	(* Imprimo el saldo actualizado *)
	writeln('Su saldo es ahora de ', micuenta:0:2, 'euros');
	readln;
end.