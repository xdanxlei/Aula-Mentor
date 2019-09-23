package actividad1;

public class Actividad1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Asignaturas
		Asignatura Mates = new Asignatura(1);
		Asignatura Historia = new Asignatura(2);
		Asignatura Lengua = new Asignatura(3);
		
		//Alumnos
		Alumno Miguel = new Alumno(Mates, Historia, Lengua);
		
		//Profesores
		Profesor Fernando = new Profesor();
		
		//Calificaciones
		Fernando.ponerNotas(Miguel);
		
		//Mostrar media
		System.out.println("La media es " + Fernando.calcularMedia(Miguel) +".");
		
	}

}
