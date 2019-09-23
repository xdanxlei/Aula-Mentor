package actividad3;

public class CuentaAhorro extends CuentaCorriente {
	//Atributos
	private Double Interes;
	
	//Constructores
	public CuentaAhorro(Titular u, String c, Double s, Double i)
	{
		super(u, c, s);
		Interes = i;
	}
	
	public CuentaAhorro(Titular u, String c, Double i)
	{
		super(u, c);
		Interes = i;
	}
	
	public CuentaAhorro(Titular u, String c)
	{
		super(u, c);
		Interes = 2.5;
	}
	
	//Getters
	public Double getInteres()
	{
		return Interes;
	}
	
	//Métodos
	public void calcularInteres()
	{
		setSaldo(getSaldo() * (100 + Interes) / 100);
	}
}
