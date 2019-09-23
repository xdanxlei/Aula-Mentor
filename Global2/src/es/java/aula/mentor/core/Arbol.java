package es.java.aula.mentor.core;

public class Arbol extends Producto implements Regable {
	//Atributos
	protected boolean corcho;
	protected int diametro;
	
	//Constructor
	public Arbol(int i, String n, long p, boolean c, int d) {
		super(i, n, p);
		corcho = c;
		diametro = d;
	}
	
	//Getters
	public String getNombre() {
		return nombre;
	}
	
	//Regable
	public int calcularCantidadAgua() {
		if(corcho) {
			return 4 * diametro;
		}
		else {
			return 2 * diametro;
		}
	}
}
