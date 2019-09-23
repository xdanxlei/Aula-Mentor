package es.java.aula.mentor.core;

public class Interior extends Planta {
	//Atributos
	private int temperatura;
	
	//Constructor
	public Interior(int i, String n, long p, String f, int h, int t) {
		super(i, n, p, f, h);
		temperatura = t;
	}
	
	//Getters
	public String getNombre() {
		return nombre;
	}
	
	//Regable
	public int calcularCantidadAgua() {
		return 2 * temperatura * humedad;
	}
}
