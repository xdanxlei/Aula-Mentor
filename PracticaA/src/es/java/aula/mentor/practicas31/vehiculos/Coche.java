package es.java.aula.mentor.practicas31.vehiculos;

public class Coche extends Vehiculo {
	//Atributos
	private int Puertas;
	
	//Constructores
	public Coche(String M, double K, int P) {
		super(M, K);
		Puertas = P;
	}
	
	//Getters
	public int getPuertas() {
		return Puertas;
	}
	
	//Métodos
	public void mostrar() {
		super.mostrar();
		System.out.println("Puertas: " + Puertas);
	}
}
