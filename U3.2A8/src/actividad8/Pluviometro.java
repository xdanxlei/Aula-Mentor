package actividad8;

import java.util.ArrayList;

public class Pluviometro {
	//Atributos
	private ArrayList<Mes> Meses = new ArrayList<Mes>();
	private String Año;
	private boolean Bisiesto;
	
	//Constructores
	public Pluviometro(String año, boolean B) {
		Año = año;
		Bisiesto = B;
		Meses.add(new Mes("Enero", 31));
		if (Bisiesto) {
			Meses.add(new Mes("Febrero", 29));
		} else {
			Meses.add(new Mes("Febrero", 28));
		}
		Meses.add(new Mes("Marzo", 31));
		Meses.add(new Mes("Abril", 30));
		Meses.add(new Mes("Mayo", 31));
		Meses.add(new Mes("Junio", 30));
		Meses.add(new Mes("Julio", 31));
		Meses.add(new Mes("Agosto", 31));
		Meses.add(new Mes("Septiembre", 30));
		Meses.add(new Mes("Octubre", 31));
		Meses.add(new Mes("Noviembre", 30));
		Meses.add(new Mes("Diciembre", 31));
	}
	
	//Añadir precipitacion
	public void addPrecipitacion(double agua, int mes) {
		Meses.get(mes).Precipitaciones.add(agua);
	}
	
	//Total de un mes
	public double totalMes(int mes) {
		double total = 0;
		int i = 0;
		while (i < Meses.get(mes).Precipitaciones.size()) {
			total += Meses.get(mes).Precipitaciones.get(i);
			i++;
		}
		return total;
	}
	
	//Media de un mes
	public double mediaMes(int mes) {
		double media = totalMes(mes);
		int dias = Meses.get(mes).Dias;
		media /= dias;
		return media;
	}
	
	//Total del año
	public double total() {
		double total = 0;
		int mes = 0;
		while (mes < 12) {
			total += totalMes(mes);
			mes++;
		}
		return total;
	}
	
	//Media del año
	public double media() {
		double media = total();
		int dias = Bisiesto?366:365;
		media /= dias;
		return media;
	}
	
	//Mostrar media de un mes
	public void mostrarMediaMes(int mes) {
		System.out.println(Meses.get(mes).Nombre + ": " + mediaMes(mes) + " m3/dia");
	}
	
	//Mostrar media del año
	public void mostrarMedia() {
		System.out.println( "Media de " + Año + ": " + media() + " m3/dia");
	}
	
	//Mostrar todo
	public void mostrarTodo() {
		int mes = 0;
		while (mes < 12) {
			mostrarMediaMes(mes);
			mes++;
		}
		mostrarMedia();
	}
}
