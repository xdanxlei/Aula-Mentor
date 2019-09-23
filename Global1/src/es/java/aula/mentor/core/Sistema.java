package es.java.aula.mentor.core;

import java.util.ArrayList;

public class Sistema {
	//Constantes
	public final static long DESC1 = 2;
	public final static long DESC5 = 5;
	
	//Atributos
	private ArrayList<Reserva> reservas = new ArrayList<Reserva>();
	private int max = 10;
	private int ID = 0;
	
	//Imposibilidad de reservar
	public boolean lleno() {
		if(reservas.size() >= max) {
			return true;
		}
		else {
			return false;
		}
	}
	
	//Añadir reservas
	public int reservar(String nombre, String codigo) {
		++ID;
		if(lleno()) {
			return -1;
		}
		else {
			Reserva R;
			if(codigo.contentEquals("DESC0001")) {
				R = new Especial(nombre, ID, DESC1);
			}
			else if(codigo.contentEquals("DESC0005")) {
				R = new Especial(nombre, ID, DESC5);
			}
			else {
				R = new Reserva(nombre, ID);
			}
			reservas.add(R);
			return ID;
		}
	}
	
	//Buscar entrada
	public int posicion(int id) {
		int i = 0;
		while(i < reservas.size()) {
			if(id == reservas.get(i).getID()) {
				return i;
			}
			i++;
		}
		return -1;
	}
	
	//Cancelar entrada
	public void cancelar(int id) {
		int pos = posicion(id);
		reservas.remove(pos);
	}
	
	//Recaudación total
	public long precioTotal() {
		long total = 0;
		int i = 0;
		while(i < reservas.size()) {
			total += reservas.get(i).getPrecio();
			i++;
		}
		return total;
	}
	
	//Mostrar recaudación total
	public void mostrarTotal() {
		long total = precioTotal();
		System.out.println("La recaudación total es de " + total + "€.");
	}
	
	//Mostrar entradas una por una
	public void mostrarEntradas() {
		int i = 0;
		while(i < reservas.size()) {
			reservas.get(i).mostrarEntrada();
			System.out.println();
			i++;
		}
	}
	
	//Mostrar todo
	public void mostrar() {
		mostrarEntradas();
		mostrarTotal();
	}
}
