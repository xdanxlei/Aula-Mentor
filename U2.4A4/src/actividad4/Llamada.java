package actividad4;

public class Llamada {
	//Atributos
	protected String Origen;
	protected String Destino;
	protected int Duracion;
	protected double Precio;
	
	//Constructores
	public Llamada(String o, String d, int n)
	{
		Origen = o;
		Destino = d;
		Duracion = n;
		Precio = n * 15;
	}
	
	//Getters
	public String getOrigen()
	{
		return Origen;
	}
	
	public String getDestino()
	{
		return Destino;
	}
	
	public int getDuracion()
	{
		return Duracion;
	}
	
	//Métodos
	public void mostrarLlamada()
	{
		System.out.println("Número origen: " + Origen);
		System.out.println("Número destino: " + Destino);
		System.out.println("Duración de la llamada: " + Duracion + " segundos");
		System.out.println("Precio total de la llamada: " + Precio/100 + "€");
		System.out.println();
	}
}
