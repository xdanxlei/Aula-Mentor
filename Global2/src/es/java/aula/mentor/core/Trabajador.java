package es.java.aula.mentor.core;

public class Trabajador {
	//Atributos
	private String nombre;
	private String NIF;
	
	//Constructor
	public Trabajador(String n, String dni) {
		nombre = n;
		NIF = dni;
	}
	
	//Getters
	public String getNombre() {
		return nombre;
	}
	
	public String getNIF() {
		return NIF;
	}
}
