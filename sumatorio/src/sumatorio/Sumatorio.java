package sumatorio;

public class Sumatorio {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Inicializar variables
		int total = 0;
		
		//C�lculos
		for(int i = 100; !(i == 0); i--)
		{
			total += i;
		}
		
		//Mostrar resultados
		System.out.println("La suma de los 100 primeros n�meros es " + total + ".");
	}

}
