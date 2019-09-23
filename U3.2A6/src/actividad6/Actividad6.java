package actividad6;

public class Actividad6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Taller taller1 = new Taller();
		int opcion = 1;
		while(opcion != 5){
			System.out.println("Añadir (1)");
			System.out.println("Eliminar (2)");
			System.out.println("Listar (3)");
			System.out.println("Mostrar (4)");
			System.out.println("Salir (5)");
			
			opcion = Lector.leerInt();
			
			taller1.procesarOpcion(opcion);
		}
	}

}
