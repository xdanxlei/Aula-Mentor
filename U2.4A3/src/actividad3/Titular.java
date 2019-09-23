package actividad3;

public class Titular {
	//Atributos
	public String Nombre;
	public String Apellidos;
	public int Edad;
	
	//Constructores
	public Titular(String n, String a, int e)
	{
		Nombre = n;
		Apellidos = a;
		Edad = e;
	}
	
	public void mostrar()
	{
		System.out.println(Nombre + " " + Apellidos + ", " + Edad + " años.");
	}
}
