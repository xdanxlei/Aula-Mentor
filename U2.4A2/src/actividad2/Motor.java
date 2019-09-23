package actividad2;

public class Motor {
	//Atributos
	int Aceite;
	int CV;
	
	//Constructores
	public Motor(int n)
	{
		CV = n;
		Aceite = 0;
	}
	
	//Getters
	public int getAc()
	{
		return Aceite;
	}
	
	public int getCV()
	{
		return CV;
	}
	
	//Setters
	public void setAc(int n)
	{
		Aceite = n;
	}
}
