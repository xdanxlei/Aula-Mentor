package actividad4;

public class LlamadaProvincial extends Llamada {
	//Atributos
	private int Franja;
	
	//Constructores
	public LlamadaProvincial(String o, String d, int n, int f)
	{
		super(o,d,n);
		Franja = f;
		Precio = n * (15 + 5 * f);
	}
	
	//Getters
	public int getFranja()
	{
		return Franja;
	}
	
	//Métodos
	public void mostrarLlamada()
	{
		System.out.println("Número origen: " + Origen);
		System.out.println("Número destino: " + Destino);
		System.out.println("Duración de la llamada: " + Duracion + " segundos");
		System.out.println("Precio total de la llamada: " + Precio/100 + "€");
		System.out.println("Franja: " + Franja);
		System.out.println();
	}
}
