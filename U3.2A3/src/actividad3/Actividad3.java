package actividad3;

import java.util.Scanner;

public class Actividad3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scan = new Scanner(System.in);
		System.out.print("Base: ");
		double base = scan.nextDouble();
		System.out.print("Exponente: ");
		int exponente = scan.nextInt();
		scan.close();
		double potencia = Calcular.Potencia(base, exponente);
		System.out.println();
		System.out.println("Resultado: " + potencia);
	}

}
