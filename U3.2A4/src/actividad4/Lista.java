package actividad4;

import java.util.ArrayList;

public abstract class Lista {
	//Atributos
	protected ArrayList<Object> objeto = new ArrayList<Object>();
	
	//Entrada
	public void a�adir(Object entrada) {
		objeto.add(entrada);
	}
	
	//Salida
	public abstract Object extraer();
}
