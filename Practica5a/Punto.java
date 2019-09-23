public class Punto
{
	//Atributos
	private double x;
	private double y;
	
	//Constructores
	public Punto(double num1, double num2)
	{
		x = num1;
		y = num2;
	}
	
	public Punto()
	{
		x = 0;
		y = 0;
	}
	
	// Getters
	public double getx() 
	{
    return x;
	}
	
	public double gety() 
	{
    return y;
	}
	
	//Métodos
	public double calcularDistanciaDesde(Punto punto1)
	{
		double distancia = Math.sqrt(Math.pow((x-punto1.getx()), 2) + Math.pow((y-punto1.gety()), 2));
		return distancia;
	}
}