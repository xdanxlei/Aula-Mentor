package actividad5;

public class Cifrador {
	//M�todo cifrador
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
