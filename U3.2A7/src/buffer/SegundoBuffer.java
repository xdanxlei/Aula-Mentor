package buffer;

import java.util.ArrayList;
import trama.Trama;

public class SegundoBuffer extends Buffer {
	//Atributos
	ArrayList<Trama> puerto2 = new ArrayList<Trama>();
	ArrayList<Trama> puerto3 = new ArrayList<Trama>();
	
	//Getters
	public Trama getTrama(int t, int p) {
		if (p == 1) {
			return puerto.get(t);
		}
		else if (p == 2) {
			return puerto2.get(t);
		}
		else if (p == 3) {
			return puerto3.get(t);
		}
		return null;
	}
	
	public int getSize2() {
		return puerto2.size();
	}
	
	public int getSize3() {
		return puerto3.size();
	}

	//Añadir trama
	public void addTrama(Trama t, int p) {
		if (p == 1) {
			puerto.add(t);
		}
		else if (p == 2) {
			puerto2.add(t);
		}
		else if (p == 3) {
			puerto3.add(t);
		}
	}
}
