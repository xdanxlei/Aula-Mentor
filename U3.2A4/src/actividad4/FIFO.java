package actividad4;

public class FIFO extends Lista {
	
	@Override
	public Object extraer() {
		// TODO Auto-generated method stub
		Object salida = objeto.get(0);
		objeto.remove(0);
		return salida;
	}
}
