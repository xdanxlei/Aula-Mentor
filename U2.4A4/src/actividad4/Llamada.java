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
	
	//M�todos
	public void mostrarLlamada()
	{
		System.out.println("N�mero origen: " + Origen);
		System.out.println("N�mero destino: " + Destino);
		System.out.println("Duraci�n de la llamada: " + Duracion + " segundos");
		System.out.println("Precio total de la llamada: " + Precio/100 + "�");
		System.out.println();
	}
}
