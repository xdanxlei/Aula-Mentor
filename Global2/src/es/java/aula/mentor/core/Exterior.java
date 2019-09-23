package es.java.aula.mentor.core;

public class Exterior extends Planta {
	//Atributos
	private int luz;
	
	//Constructor
	public Exterior(int i, String n, long p, String f, int h, int l) {
		super(i, n, p, f, h);
		luz = l;
	}
	
	//Getters
	public String getNombre() {
		return nombre;
	}
	
	//Regable
	public int calcularCantidadAgua() {
		return 3 * luz * humedad;
	}
}
