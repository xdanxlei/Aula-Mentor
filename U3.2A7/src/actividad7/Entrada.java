package actividad7;

import buffer.*;
import trama.*;

public class Entrada {
	//Atributos
	Buffer buffer1 = new Buffer();
	SegundoBuffer buffer2 = new SegundoBuffer();
	
	//Enviar trama
	public void enviarTrama(Trama t) {
		buffer1.addTrama(t);
		if (buffer1.getSize() > 3) {
			buffer2.addTrama(buffer1.maxPrioridad(), buffer1.maxPrioridad().getPuerto());
			buffer1.removeTrama(buffer1.maxPrioridad());
			buffer2.addTrama(buffer1.maxPrioridad(), buffer1.maxPrioridad().getPuerto());
			buffer1.removeTrama(buffer1.maxPrioridad());
		}
	}
	
	//Mostrar todas las tramas
	public void mostrar() {
		int f = buffer1.getSize();
		int i = 0;
		while (i < f) {
			System.out.println(buffer1.getTrama(i).getContenido());
			System.out.println();
			i++;
		}
		f = buffer2.getSize();
		i = 0;
		while (i < f) {
			System.out.println(buffer2.getTrama(i, 1).getContenido());
			System.out.println();
			i++;
		}
		f = buffer2.getSize2();
		i = 0;
		while (i < f) {
			System.out.println(buffer2.getTrama(i, 2).getContenido());
			System.out.println();
			i++;
		}
		f = buffer2.getSize3();
		i = 0;
		while (i < f) {
			System.out.println(buffer2.getTrama(i, 3).getContenido());
			System.out.println();
			i++;
		}
	}
}
