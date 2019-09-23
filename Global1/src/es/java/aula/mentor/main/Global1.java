package es.java.aula.mentor.main;

import es.java.aula.mentor.core.*;

public class Global1 {

	public static void main(String[] args) {
		//Crea sistema
		Sistema S1 = new Sistema();
		
		//Crea reservas
		int R1 = S1.reservar("Eduardo P�rez", "DESC0001");
		int R2 = S1.reservar("Mar�a Jim�nez", "");
		
		//Cancela reserva
		S1.cancelar(R2);
		
		//Mostrar todo
		S1.mostrar();
	}

}
