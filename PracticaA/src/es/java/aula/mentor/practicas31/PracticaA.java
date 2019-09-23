package es.java.aula.mentor.practicas31;

import es.java.aula.mentor.practicas31.vehiculos.*;

public class PracticaA {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Vehículos
		Coche c1 = new Coche("Citroen", 100, 4) ;
		Coche c2 = new Coche("Renault", 1005, 5) ;
		Coche c3 = new Coche("Renault", 1005, 5) ;
		Coche c4 = new Coche("Renault", 1005, 5) ;
		
		Motocicleta m1 = new Motocicleta("Haley", 526, 250);
		Motocicleta m2 = new Motocicleta("Samsung", 150, 50);
		
		//Ingresar
		Garaje G = new Garaje(200, 5);
		
		G.ingresar(m1);
		G.ingresar(c1);
		G.ingresar(c2);
		G.ingresar(m2);
		G.ingresar(c4);
		
		G.ingresar(c3);
		
		G.retirar(2);
		G.retirar(c2);
		
		G.ingresar(c3);
		
		G.mostrar();
		System.out.println();
		
		c2.mostrar();
		System.out.println();
		m1.mostrar();
	}

}
