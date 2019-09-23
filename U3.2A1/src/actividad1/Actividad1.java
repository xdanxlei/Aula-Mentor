package actividad1;

import java.util.ArrayList;

public class Actividad1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> Serie = new ArrayList<Integer>();
		
		Ordenar.entrada(Serie);
		
		Serie = Ordenar.burbuja(Serie);
		
		Ordenar.salida(Serie);
	}

}
