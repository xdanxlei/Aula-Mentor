package es.java.aula.mentor.core;

public class Reserva {
	//Constantes
	protected final static long precio = 8;
	
	//Atributos
	protected String nombre;
	protected int ID;
	
	//Constructor
	public Reserva(String n, int i) {
		nombre = n;
		ID = i;
	}
	
	//Getters
	public long getPrecio() {
		return precio;
	}
	
	public int getID() {
		return ID;
	}
	
	//Mostrar entrada
	public void mostrarEntrada() {
		System.out.println("Entrada " + ID);
		System.out.println("Propietario: " + nombre);
		System.out.println("Precio: " + getPrecio() + "€");
	}
}
