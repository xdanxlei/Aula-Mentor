package actividad5;

public class Cifrador {
	//Método cifrador
	public int cifrar(int n, Algoritmo a, boolean c )
	{
		if(c)
		{
			return a.cifrar(n);
		}
		else
		{
			return a.descifrar(n);
		}
	}
}
