package actividad5;

public class Matricula {
	//Atributos
	public String nombre;
	public Parte parte;
	
	//Constructores
	public Matricula(String n, String c, String d, double i){
		nombre = n;
		parte = new Parte(c, d, i);
	}
	
	//Getters
	public String getNombre() {
		return nombre;
	}
	
	//Mostrar
	public void mostrar() {
		System.out.println("Matrícula: " + nombre);
		parte.mostrar();
	}
}
