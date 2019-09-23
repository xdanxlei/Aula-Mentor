package es.java.aula.mentor.practicas31;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Archivador {
	//List
	public List<Ficha> Fichero = new ArrayList<Ficha>();
	
	//Añadir fichas a Fichero
	public void guardar(Ficha f) {
		Fichero.add(f);
	}
	
	//Eliminar fichas de Fichero
	public void eliminar(Ficha f) {
		Fichero.remove(f);
	}
	
	public void eliminar(int f) {
		Fichero.remove(f);
	}
	
	//Contar fichas
	public int numeroDeFichas() {
		return Fichero.size();
	}
	
	//Mostrar objeto
	public void listado() {
		System.out.println("Número de fichas: " + numeroDeFichas());
		System.out.println();
		Iterator<Ficha> iterator = Fichero.iterator();
		while(iterator.hasNext()) {
			iterator.next().mostrar();
		}
	}
}
