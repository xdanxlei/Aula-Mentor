package actividad4;

public class Actividad4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Listas
		FIFO fifo1 = new FIFO();
		LIFO lifo1 = new LIFO();
		
		//Datos
		String a = "Gato";
		double b = 35.4;
		int c = 299;
		boolean d = true;
		
		//Entrada
		fifo1.añadir(a);
		fifo1.añadir(b);
		fifo1.añadir(c);
		fifo1.añadir(d);
		
		lifo1.añadir(a);
		lifo1.añadir(b);
		lifo1.añadir(c);
		lifo1.añadir(d);
		
		//Salida
		System.out.println("FIFO:");
		System.out.println(fifo1.extraer());
		System.out.println(fifo1.extraer());
		System.out.println(fifo1.extraer());
		System.out.println(fifo1.extraer());
		
		System.out.println();
		
		System.out.println("LIFO:");
		System.out.println(lifo1.extraer());
		System.out.println(lifo1.extraer());
		System.out.println(lifo1.extraer());
		System.out.println(lifo1.extraer());
	}

}
