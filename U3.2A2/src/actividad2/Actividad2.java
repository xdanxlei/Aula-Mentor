package actividad2;

import java.util.Scanner;

public class Actividad2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scan = new Scanner(System.in);
		System.out.print("Introduce un n�mero binario de diez o menos cifras: ");
		String numero = scan.nextLine();
		scan.close();
		System.out.println();
		String decimal = Transformar.enDecimal(numero);
		String binario = Transformar.enBinario(decimal);
		System.out.println("N�mero transformado a decimal: " + decimal);
		System.out.println("N�mero transformado de nuevo a binario: " + binario);
	}

}
