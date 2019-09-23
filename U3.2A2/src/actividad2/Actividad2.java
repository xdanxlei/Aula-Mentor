package actividad2;

import java.util.Scanner;

public class Actividad2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scan = new Scanner(System.in);
		System.out.print("Introduce un número binario de diez o menos cifras: ");
		String numero = scan.nextLine();
		scan.close();
		System.out.println();
		String decimal = Transformar.enDecimal(numero);
		String binario = Transformar.enBinario(decimal);
		System.out.println("Número transformado a decimal: " + decimal);
		System.out.println("Número transformado de nuevo a binario: " + binario);
	}

}
