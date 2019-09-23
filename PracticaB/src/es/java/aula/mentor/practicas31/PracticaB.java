package es.java.aula.mentor.practicas31;

public class PracticaB {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ficha A = new Ficha("Pablo", "Mármol", 45);
		Ficha B = new Ficha("Gabriel", "Pérez", 52);
		Ficha C = new Ficha("Lucía", "Zambrano", 7);
		
		Archivador Ar = new Archivador();
		
		Ar.guardar(A);
		Ar.guardar(B);
		Ar.guardar(C);
		
		Ar.listado();
		
		Ar.eliminar(1);
		
		Ar.listado();
	}

}
