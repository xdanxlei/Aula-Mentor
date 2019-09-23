package actividad3;

public class CuentaCorriente {
	//Atributos
	private Titular Usuario;
	private String Cuenta;
	private Double Saldo;
	
	//Constructores
	public CuentaCorriente(Titular u, String c, Double s)
	{
		Usuario = u;
		Cuenta = c;
		Saldo = s;
	}
	
	public CuentaCorriente(Titular u, String c)
	{
		Usuario = u;
		Cuenta = c;
		Saldo = 15.3;
	}
	
	//Getters
	public Titular getUsuario()
	{
		return Usuario;
	}
	
	public String getCuenta()
	{
		return Cuenta;
	}
	
	public Double getSaldo()
	{
		return Saldo;
	}
	
	//Setters
	public void setSaldo(Double s)
	{
		Saldo = s;
	}
	
	//Métodos de saldo
	public void ingresar(Double s)
	{
		Saldo += s;
	}
	
	public void reintegro(Double s)
	{
		Saldo -= s;
	}
	
	//Otros métodos
	public void mostrarCuenta()
	{
		System.out.println("Número de cuenta: " + Cuenta);
		System.out.println("Saldo: " + Saldo);
	}
	
	public boolean igualA(CuentaCorriente cc)
	{
		if(Cuenta.compareTo(cc.getCuenta()) == 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
