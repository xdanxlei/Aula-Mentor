package es.java.aula.mentor.core;

public abstract class SistemaRegadio {
	//Regar
	public static void riega(Regable R) {
		System.out.println("Se han usado " + R.calcularCantidadAgua() + "mL para regar el producto " + R.getNombre() + ".");
	}
}
