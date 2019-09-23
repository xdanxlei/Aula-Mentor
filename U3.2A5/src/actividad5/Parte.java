package actividad5;

public class Parte {
	//Atributos
	public String codigo;
	public String descripcion;
	public double importe;
	
	//Constructores
	public Parte(String c, String d, double i){
		codigo = c;
		descripcion = d;
		importe = i;
	}
	
	//Mostrar
	public void mostrar() {
		System.out.println("Codigo: " + codigo);
		System.out.println("Descripcion: " + descripcion);
		System.out.println("Importe: " + importe + "€");
	}
}
