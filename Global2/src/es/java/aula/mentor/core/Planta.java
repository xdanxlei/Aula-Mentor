package es.java.aula.mentor.core;

public abstract class Planta extends Producto implements Regable {
	//Atributos
	protected String flor;
	protected int humedad;
	
	//Constructor
	public Planta(int i, String n, long p, String f, int h) {
		super(i, n, p);
		flor = f;
		humedad = h;
	}
	
	//Getter
	public String getFlor() {
		return flor;
	}
	
	//Regable
	public abstract int calcularCantidadAgua();
}
