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
		fifo1.a�adir(a);
		fifo1.a�adir(b);
		fifo1.a�adir(c);
		fifo1.a�adir(d);
		
		lifo1.a�adir(a);
		lifo1.a�adir(b);
		lifo1.a�adir(c);
		lifo1.a�adir(d);
		
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
