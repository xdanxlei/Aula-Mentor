package actividad4;

public class Centralita {
	//Atributos
	private int Llamadas;
	private double Facturacion;
	
	//Constructores
	public Centralita()
	{
		Llamadas = 0;
		Facturacion = 0;
	}
	
	//M�todos
	public void registrarLlamada(Llamada l)
	{
		Llamadas += 1;
		Facturacion += l.Precio;
		l.mostrarLlamada();
	}
	
	public void informe()
	{
		System.out.println("Llamadas totales: " + Llamadas);
		System.out.println("Facturaci�n total: " + Facturacion/100 + "�");
		System.out.println();
	}
}
