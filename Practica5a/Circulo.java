public class Circulo
{
	//Atributos
	private Punto centro;
	private double r;
	
	//Constructores
	public Circulo(Punto punto1, double n)
	{
		centro = punto1;
		r = n;
	}
	
	public Circulo()
	{
		centro = new Punto();
		r = 1;
	}
	
	public Circulo(double x, double y, double n)
	{
		centro = new Punto(x, y);
		r = n;
	}
	
	//Getters
	public Punto getcircentro()
	{
		return centro;
	}
	
	public double getcirr() 
	{
    return r;
	}
	
	//Métodos
	public double calcularDistanciaDesde(Punto punto1)
	{
		return centro.calcularDistanciaDesde(punto1);
	}
	
	public double calcularArea()
	{
		return Math.PI * Math.pow(r, 2);
	}
	
	public double calcularPerimetro()
	{
		return 2 * Math.PI * r;
	}
}