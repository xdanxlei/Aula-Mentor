(* 

 Tema 6: Subprogramas
 
 Programa de ejemplo de definición e invocación de funciones
 
*)

Program PrecioFinal;

Var
  valor:   real;    (* Precio del libro     *)
  iva:     real;    (* IVA aplicable        *)
  total:   real;    (* Precio venta al público *)
  num:     real;    (* Número de libros  *)
	 	 
(* Recibe el valor de un producto y el IVA (en %) y devuelve como *)
(*   resultado de la función el precio final                      *)		 
Function PVP(valor: real; iva: real): real;
  var
    total_iva : real;
  begin
    total_iva := valor*iva/100;
    PVP := valor + total_iva;
  end;	 
				 
(** Cuerpo del programa principal  **)				 
begin
   write('Introduzca el valor del producto: ');
   readln(valor);
   write('Introduzca el IVA del producto: ');
   readln(iva);
		 
   total := PVP(valor,iva);
   writeln('El precio final es: ', total:0:2);
		 
   write('Introduzca el número de productos: ');
   readln(num);
   writeln('El total es ', total:0:2, ' x ',
	          num:0:0, ' = ', num*PVP(valor,iva):0:2);
end.