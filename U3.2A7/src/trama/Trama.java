package trama;

public abstract class Trama {
	//Atributos
	protected String contenido;
	protected int prioridad;
	protected int puerto;
	
	//Constructores
	public Trama(String cont) {
		contenido = cont;
		prioridad = util.Util.rand10();
		puerto = util.Util.rand3();
	}
	
	public Trama(String cont, int pri, int puer) {
		contenido = cont;
		prioridad = pri;
		puerto = puer;
	}
	
	//Getters
	public String getContenido() {
		return contenido;
	}
	
	public int getPrioridad() {
		return prioridad;
	}
	
	public int getPuerto() {
		return puerto;
	}
	
	//Devolver trama de mayor prioridad
	public Trama compararPrioridad(Trama t) {
		if (prioridad < t.getPrioridad()) {
			return t;
		}
		else if (prioridad > t.getPrioridad()) {
			return this;
		}
		else {
			if (0 > this.contenido.compareToIgnoreCase(t.getContenido())) {
				return this;
			}
			else {
				return t;
			}
		}
	}
}
