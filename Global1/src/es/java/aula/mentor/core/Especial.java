package es.java.aula.mentor.core;

public class Especial extends Reserva {
	//Atributos
	private long descuento;
	
	//Constructor
	public Especial(String n, int i, long d) {
		super(n, i);
		descuento = d;
	}
	
	//Getters
	public long getPrecio() {
		return precio - descuento;
	}
}
