package actividad5;

public class Diferencia implements Algoritmo {
	//M�todos
	public int cifrar(int n)
	{
		return 589642-n;
	}
	
	public int descifrar(int n)
	{
		return cifrar(n);
	}
}
