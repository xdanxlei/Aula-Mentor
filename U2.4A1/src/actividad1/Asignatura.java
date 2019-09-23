package actividad1;

public class Asignatura {
	//Atributos
	private int id;
	private double mark;
	
	//Constructores
	public Asignatura(int n)
	{
		id = n;
	}
	
	//Getters
	public int getId()
	{
		return id;
	}
	
	public double getMark()
	{
		return mark;
	}
	
	//Setters
	public void setMark(double m)
	{
		mark = m;
	}
}
