package actividad1;

public class Alumno {
	//Atributos
	private Asignatura A1;
	private Asignatura A2;
	private Asignatura A3;
	
	//Constructores
	public Alumno(Asignatura a, Asignatura b, Asignatura c)
	{
		A1 = new Asignatura(a.getId());
		A2 = new Asignatura(b.getId());
		A3 = new Asignatura(c.getId());
	}
	
	public Alumno(int a, int b, int c)
	{
		A1 = new Asignatura(a);
		A2 = new Asignatura(b);
		A3 = new Asignatura(c);
	}
	
	//Getters
	public Asignatura getA1()
	{
		return A1;
	}
	
	public Asignatura getA2()
	{
		return A2;
	}
	
	public Asignatura getA3()
	{
		return A3;
	}
	
	//Setters
	public void setA1(double nota)
	{
		A1.setMark(nota);
	}
	
	public void setA2(double nota)
	{
		A2.setMark(nota);
	}
	
	public void setA3(double nota)
	{
		A3.setMark(nota);
	}
}
