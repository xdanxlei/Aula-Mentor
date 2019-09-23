package actividad4;

public class LIFO extends Lista {

	@Override
	public Object extraer() {
		// TODO Auto-generated method stub
		int last = objeto.size() - 1;
		Object salida = objeto.get(last);
		objeto.remove(last);
		return salida;
	}
}
