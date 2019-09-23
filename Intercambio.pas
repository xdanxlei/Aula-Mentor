(* 

 Tema 6: Subprogramas
 
 Programa ejemplo del uso de parámetros por referencia.
 Intercambia el valor de dos variables.
 
*)

Program Intercambio;
Var 
	a:			integer;
	b:			integer;
	
(* Procedimiento que intercambia el valor de dos variables     *)
(* Para ello es necesario pasar las dos variables por valor 	 *)
Procedure Swap(VAR x, y: Integer);
Var
	aux : Integer;
Begin
	aux := y;   (* almacena en aux el valor de y para que no se pierda en *)
	            (*  la siguiente asignación                               *)
	y := x;
	x := aux;   (* Le asigna el valor de y que se guardo en aux           *)
End;


(* Modulo principal *)
begin
	a := 15;					(* Valores iniciales: se pueden pedir al usuario *)
	b := 7;
	
	writeln('Antes de intercambio: a= ', a, ' b= ', b);
	
	Swap(a, b);
	
	writeln('Despues de intercambio: a= ', a, ' b= ', b);
end.