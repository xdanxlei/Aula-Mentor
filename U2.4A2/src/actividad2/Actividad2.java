package actividad2;

public class Actividad2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Garaje
		Garaje G = new Garaje();
		
		//Coches
		Coche c1 = new Coche("Renault", "Scenic");
		Coche c2 = new Coche("Ford", "Mondeo");
		
		//Reparar coches
		G.aceptarCoche(c1, "Rueda");
		G.devolverCoche();
		
		G.aceptarCoche(c2,"Motor");
		G.devolverCoche();
		
		G.aceptarCoche(c1, "Luz");
		G.devolverCoche();
		
		G.aceptarCoche(c2,"Aceite");
		G.devolverCoche();
		
		//Informacion de los coches
		System.out.println(c1.getMarca() + " " + c1.getModelo() + ":");
		System.out.println("Precio de las reparaciones: " + c1.getPrecio() + "€");
		System.out.println("CV motor: " + c1.getMotor().getCV());
		System.out.println("Aceite en el motor: " + c1.getMotor().getAc());
		
		System.out.println();
		
		System.out.println(c2.getMarca() + " " + c2.getModelo() + ":");
		System.out.println("Precio de las reparaciones: " + c2.getPrecio() + "€");
		System.out.println("CV motor: " + c2.getMotor().getCV());
		System.out.println("Aceite en el motor: " + c2.getMotor().getAc());
	}

}
