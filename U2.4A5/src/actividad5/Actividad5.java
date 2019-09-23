package actividad5;

public class Actividad5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Códigos
		int a = 9497;
		int b = 77;
		int c = 2845;
		
		//Algoritmos
		Multiplicacion M = new Multiplicacion();
		Diferencia D = new Diferencia();
		XOR X = new XOR();
		
		//Cifrador
		Cifrador Cif = new Cifrador();
		
		a = Cif.cifrar(a, M, true);
		System.out.println(a);
		a = Cif.cifrar(a, M, false);
		System.out.println(a);
		
		b = Cif.cifrar(b, D, true);
		System.out.println(b);
		b = Cif.cifrar(b, D, false);
		System.out.println(b);
		
		c = Cif.cifrar(c, X, true);
		System.out.println(c);
		c = Cif.cifrar(c, X, false);
		System.out.println(c);
	}

}
