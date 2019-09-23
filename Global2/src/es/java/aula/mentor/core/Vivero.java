package es.java.aula.mentor.core;

import java.util.ArrayList;

public class Vivero {
	//Atributos
	private String nombre;
	private String localizacion;
	private ArrayList<Producto> productos = new ArrayList<Producto>();
	private ArrayList<Trabajador> staff = new ArrayList<Trabajador>();
	
	//Constructor
	public Vivero(String n, String l) {
		nombre = n;
		localizacion = l;
	}
	
	//Getters
	public Producto getProducto(int i) {
		return productos.get(i);
	}
	public int getNumProductos() {
		return productos.size();
	}
	
	public String getNombre() {
		return nombre;
	}
	
	//Añadir producto
	public void addProducto(Producto p) {
		productos.add(p);
		ordenarProductos();
	}
	
	//Ordenar productos
	public void ordenarProductos() {
		int cambios = 1;
		while(cambios > 0) {
			cambios = iteracion();
		}
	}
	
	private int iteracion() {
		int i = 1;
		int cambios = 0;
		while(i < productos.size()) {
			if(productos.get(i-1).getID() > productos.get(i).getID()) {
				cambios++;
				cambiar(i);
			}
			i++;
		}
		return cambios;
	}
	
	private void cambiar(int i) {
		Producto p = productos.get(i);
		productos.set(i, productos.get(i-1));
		productos.set(i-1, p);
	}
	
	//Mostrar la información
	public void mostrar(){
		System.out.println("Nombre: " + nombre);
		System.out.println("Localización: " + localizacion);
	}
}
