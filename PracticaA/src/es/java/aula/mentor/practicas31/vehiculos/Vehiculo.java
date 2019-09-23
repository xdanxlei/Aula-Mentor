package es.java.aula.mentor.practicas31.vehiculos;

public abstract class Vehiculo {
	//Atributos
	protected String Marca;
	protected double Kilometraje;
	
	//Constructores
	public Vehiculo(String M, double K) {
		Marca = M;
		Kilometraje = K;
	}
	
	//Getters
	public String getMarca() {
		return Marca;
	}
	
	public double getKilometraje() {
		return Kilometraje;
	}
	
	//Métodos
	public void mostrar() {
		System.out.println("Marca: " + Marca);
		System.out.println("Kilometraje: " + Kilometraje);
	}
}
