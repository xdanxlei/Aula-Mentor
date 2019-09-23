package es.java.aula.mentor.main;

import java.util.ArrayList;

import es.java.aula.mentor.core.*;

public class Global2 {

	public static void main(String[] args) {
		//Para ordenar los viveros
		ArrayList<Vivero> viveros = new ArrayList<Vivero>();
		
		//Viveros
		Vivero V1 = new Vivero("1", "Madrid");
		viveros.add(V1);
		
		Vivero V2 = new Vivero("2", "Londres");
		viveros.add(V2);
		
		//Productos
		Arbol A1 = new Arbol(0, "Nogal", 33, true, 36);
		viveros.get(0).addProducto(A1);
		
		Arbol A2 = new Arbol(5, "Abedul", 63, false, 28);
		viveros.get(0).addProducto(A2);
		viveros.get(1).addProducto(A2);
		
		Exterior E1 = new Exterior(3, "Geranio", 32, "Dicotiledónea", 4, 41);
		viveros.get(0).addProducto(E1);
		viveros.get(1).addProducto(E1);
		
		Exterior E2 = new Exterior(4, "Margarita", 11, "Dicotiledónea", 4, 57);
		viveros.get(0).addProducto(E2);
		
		Interior I1 = new Interior(2, "Orquídea", 42, "Monocotiledónea", 4, 22);
		viveros.get(0).addProducto(I1);
		
		Interior I2 = new Interior(1, "Begonia", 27, "Dicotiledónea", 4, 24);
		viveros.get(0).addProducto(I2);
		viveros.get(1).addProducto(I2);
		
		//Mostrar la información de los viveros
		int i = 0;
		while(i < viveros.size()) {
			viveros.get(i).mostrar();
			System.out.println();
			i++;
		}
		
		//Regar
		System.out.println("A continuación se regarán las plantas.");
		i = 0;
		while(i < viveros.size()) {
			int j = 0;
			System.out.println("Vivero: " + viveros.get(i).getNombre());
			System.out.println();
			while(j < viveros.get(i).getNumProductos()) {
				SistemaRegadio.riega((Regable) viveros.get(i).getProducto(j));
				System.out.println();
				j++;
			}
			i++;
		}
		
		//Mostrar el tipo de flor
		System.out.println("Tipos de flores en el vivero:");
		i = 0;
		while(i < viveros.size()) {
			int j = 0;
			System.out.println("Vivero: " + viveros.get(i).getNombre());
			System.out.println();
			while(j < viveros.get(i).getNumProductos()) {
				if(viveros.get(i).getProducto(j) instanceof Planta) {
					Planta p = (Planta) viveros.get(i).getProducto(j);
					System.out.println("El producto " + viveros.get(i).getProducto(j).getNombre() + " tiene flores de tipo " + p.getFlor() + ".");
					System.out.println();
				}
				j++;
			}
			i++;
		}
	}

}
