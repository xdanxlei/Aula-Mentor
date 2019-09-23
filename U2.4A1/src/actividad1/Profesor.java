package actividad1;

public class Profesor {
	//Métodos
	public void ponerNotas(Alumno A)
	{
		A.setA1(Math.random() * 10);
		A.setA2(Math.random() * 10);
		A.setA3(Math.random() * 10);
	}
	
	public double calcularMedia(Alumno A)
	{
		double notas = A.getA1().getMark() + A.getA2().getMark() + A.getA3().getMark();
		return notas/3;
	}
}
