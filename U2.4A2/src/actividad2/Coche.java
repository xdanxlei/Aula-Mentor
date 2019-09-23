package actividad2;

public class Coche {
	//Atributos
	private Motor M;
	private String Marca;
	private String Modelo;
	private double Precio;
	
	//Constructores
	public Coche(String a, String b)
	{
		Marca = a;
		Modelo = b;
		M = new Motor(1);
		Precio = 0;
	}
	
	//Getters
	public Motor getMotor()
	{
		return M;
	}
	
	public String getMarca()
	{
		return Marca;
	}
	
	public String getModelo()
	{
		return Modelo;
	}
	
	public double getPrecio()
	{
		return Precio;
	}
	
	//Setters
	public void setMotorAc(int n)
	{
		M.setAc(n);
	}
	
	//Métodos
	public void acumularAverias(double sum)
	{
		Precio += sum;
	}
}
