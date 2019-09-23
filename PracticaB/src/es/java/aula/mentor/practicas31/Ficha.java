package es.java.aula.mentor.practicas31;

public class Ficha {
	//Atributos
	public String Nombre;
	public String Apellidos;
	public int Edad;
	
	//Constructores
	public Ficha(String N, String A, int E) {
		Nombre = N;
		Apellidos = A;
		Edad = E;
	}
	
	//Mostrar objeto
	public void mostrar() {
		System.out.println("Nombre: " + Nombre + " " + Apellidos);
		System.out.println("Edad: " + Edad);
		System.out.println();
	}
}
