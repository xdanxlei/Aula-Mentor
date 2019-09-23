package es.java.aula.mentor.practicas31.vehiculos;

public class Motocicleta extends Vehiculo {
	//Atributos
	private double Cilindrada;
	
	//Constructores
	public Motocicleta(String M, double K, double C) {
		super(M, K);
		Cilindrada = C;
	}
	
	//Getters
	public double getCilindrada() {
		return Cilindrada;
	}
	
	//Métodos
	public void mostrar() {
		super.mostrar();
		System.out.println("Cilindrada: " + Cilindrada);
	}
}
