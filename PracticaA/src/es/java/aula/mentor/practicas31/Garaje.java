package es.java.aula.mentor.practicas31;

import es.java.aula.mentor.practicas31.vehiculos.*;

public class Garaje {
	//Atributos
	private double Precio;
	private Vehiculo[] Plazas;
	
	//Constructores
	public Garaje(double d, int i) {
		Precio = d;
		Plazas = new Vehiculo[i];
	}
	
	//Métodos de ingresar
	public int buscarHueco() {
		int i = 1;
		for(Vehiculo v: Plazas) {
			if(Plazas[i - 1] == null) {
				return i;
			}
			i++;
		}
		return 0;
	}
	
	public boolean ingresar(Vehiculo v) {
		int i = buscarHueco();
		if(i == 0) {
			System.out.println("No hay plazas libres.");
			return false;
		}
		else {
			Plazas[i - 1] = v;
			return true;
		}
	}
	
	//Métodos de retirar
	public void retirar(int i) {
		Plazas[i - 1] = null;
	}
	
	public void retirar(Vehiculo R) {
		int i = 1;
		for(Vehiculo v: Plazas) {
			if(Plazas[i - 1] == R) {
				Plazas[i - 1] = null;
			}
			i++;
		}
	}
	
	//Métodos de contar información
	public int vehiculos() {
		int i = 0;
		int n = 0;
		for(Vehiculo v: Plazas) {
			if(Plazas[i] != null) {
				n++;
			}
			i++;
		}
		return n;
	}
	
	public int coches() {
		int i = 0;
		int n = 0;
		for(Vehiculo v: Plazas) {
			if((Plazas[i] instanceof Coche) & !(Plazas[i] == null)) {
				n++;
			}
			i++;
		}
		return n;
	}
	
	public int motos() {
		int i = 0;
		int n = 0;
		for(Vehiculo v: Plazas) {
			if((Plazas[i] instanceof Motocicleta) &!(Plazas[i] == null)) {
				n++;
			}
			i++;
		}
		return n;
	}
	
	public int ruedas() {
		return motos() * 2 + coches() * 4;
	}
	
	public double sumaPrecios() {
		return ruedas() * Precio;
	}
	
	public double kilometrajeMedio() {
		int K = 0;
		int i = 0;
		for(Vehiculo v: Plazas) {
			if(Plazas[i] != null) {
				i++;
				K += v.getKilometraje();
			}
		}
		return (i == 0) ? 0 : K/i;
	}
	
	//Mostrar
	public void mostrar() {
		System.out.println("Precio por rueda: " + Precio);
		System.out.println("Precio total: " + sumaPrecios());
		System.out.println("Capacidad máxima del garaje: " +  Plazas.length + " vehículos");
		System.out.println("Número de vehículos alojados: " + vehiculos());
		System.out.println("Kilometraje medio de todos los vehículos: " + kilometrajeMedio());
	}
}
