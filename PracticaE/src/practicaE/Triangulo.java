package practicaE;

public class Triangulo //Rectángulo
{
	//Atributos
	private Punto t1;
	private Punto t2;
	private Punto t3;
	
	//Constructores
	public Triangulo(Punto punto1, Punto punto2, Punto punto3)
	{
		t1 = punto1;
		t2 = punto2;
		t3 = punto3;
	}
	
	public Triangulo()
	{
		t1 = new Punto();
		t2 = new Punto(1, 0);
		t3 = new Punto(0, 1);
	}
	
	public Triangulo(double a1, double a2, double b1, double b2, double c1, double c2)
	{
		t1 = new Punto(a1, a2);
		t2 = new Punto(b1, b2);
		t3 = new Punto(c1, c2);
	}
	
	//Getters
	public Punto gett1()
	{
		return t1;
	}
	
	public Punto gett2()
	{
		return t2;
	}
	
	public Punto gett3()
	{
		return t3;
	}
	
	//Métodos
	public double calcularDistanciaDesde(Punto punto1)
	{
		double centro1 = (t1.getx() +  t2.getx() + t3.getx()) / 3;
		double centro2 = (t1.gety() +  t2.gety() + t3.gety()) / 3;
		Punto centro = new Punto(centro1, centro2);
		return centro.calcularDistanciaDesde(punto1);
	}
	
	public double calcularArea()
	{
		return t1.calcularDistanciaDesde(t2) * t1.calcularDistanciaDesde(t3) / 2;
	}
	
	public double calcularPerimetro()
	{
		return t1.calcularDistanciaDesde(t2) + t1.calcularDistanciaDesde(t3) + t2.calcularDistanciaDesde(t3);
	}
}
