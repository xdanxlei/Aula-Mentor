package es.java.aula.mentor.practicas31;

public class PracticaB {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ficha A = new Ficha("Pablo", "M�rmol", 45);
		Ficha B = new Ficha("Gabriel", "P�rez", 52);
		Ficha C = new Ficha("Luc�a", "Zambrano", 7);
		
		Archivador Ar = new Archivador();
		
		Ar.guardar(A);
		Ar.guardar(B);
		Ar.guardar(C);
		
		Ar.listado();
		
		Ar.eliminar(1);
		
		Ar.listado();
	}

}
