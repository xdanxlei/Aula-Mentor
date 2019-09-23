package actividad8;

import java.util.ArrayList;

public class Mes {
	//Atributos
	public String Nombre;
	public int Dias;
	public ArrayList<Double> Precipitaciones = new ArrayList<Double>();
	
	//Constructores
	public Mes(String n, int dias) {
		Nombre = n;
		Dias = dias;
	}
}
