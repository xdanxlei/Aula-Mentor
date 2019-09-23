package buffer;

import java.util.ArrayList;
import trama.*;

public class Buffer {
	//Atributos
	ArrayList<Trama> puerto = new ArrayList<Trama>();
	
	//Getters
	public Trama getTrama(int i) {
		return puerto.get(i);
	}
	
	public int getSize() {
		return puerto.size();
	}
	
	//Añadir trama
	public void addTrama(Trama t) {
		puerto.add(t);
	}
	
	//Borrar trama
	public void removeTrama(Trama t) {
		puerto.remove(t);
	}
	
	//Trama de mayor prioridad
	public Trama maxPrioridad() {
		int s = puerto.size() - 1;
		Trama t = puerto.get(s);
		while (s > 0) {
			t = t.compararPrioridad(puerto.get(s - 1));
			s--;
		}
		return t;
	}
}
