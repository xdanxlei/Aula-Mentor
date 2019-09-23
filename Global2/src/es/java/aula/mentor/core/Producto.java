package es.java.aula.mentor.core;

public abstract class Producto {
	//Atributos
	protected int ID;
	protected String nombre;
	protected long precio;
	
	//Constructor
	public Producto(int i, String n, long p) {
		ID = i;
		nombre = n;
		precio = p;
	}
	
	//Getters
	public int getID() {
		return ID;
	}
	
	public String getNombre() {
		return nombre;
	}
}
