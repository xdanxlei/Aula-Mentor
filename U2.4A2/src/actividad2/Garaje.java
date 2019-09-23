package actividad2;

public class Garaje {
	//Atributos
	Coche C;
	String Averia;
	int NCoches = 0;
	
	//Métodos
	public boolean aceptarCoche(Coche c, String a)
	{
		if(C == null)
		{
			C = c;
			Averia = a;
			c.acumularAverias(Math.random() * 400);
			if(a == "Aceite")
			{
				c.setMotorAc(c.getMotor().getAc() + 10);
			}
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public void devolverCoche()
	{
		C = null;
		NCoches += 1;
	}
}
