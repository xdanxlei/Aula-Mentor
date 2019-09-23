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
	
	//M�todos
	public void mostrarLlamada()
	{
		System.out.println("N�mero origen: " + Origen);
		System.out.println("N�mero destino: " + Destino);
		System.out.println("Duraci�n de la llamada: " + Duracion + " segundos");
		System.out.println("Precio total de la llamada: " + Precio/100 + "�");
		System.out.println("Franja: " + Franja);
		System.out.println();
	}
}
