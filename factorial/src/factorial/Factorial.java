package factorial;
import java.util.Scanner;

public class Factorial {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Inicializar variables
		int numero;
		int fact;
		
		//Pedir número
		System.out.print("Escribe un número: ");
	    Scanner reader = new Scanner(System.in);
	    numero = reader.nextInt();
		System.out.println();
		
		//Calcular
		if(numero < 2)
		{
			fact = 1;
		}
		else if(numero == 2)
		{
			fact = 2;
		}
		else
		{
			fact = numero;
			for(int i = numero; i > 1; i--)
			{
				fact *= i-1;
			}
		}
		
		//Mostrar resultado
		if(numero<0)
		{
			System.out.println("El número debe ser positivo.");
		}
		else 
		{
			System.out.println("El factorial de " + numero + " es " + fact + ".");
		}
	}

}
