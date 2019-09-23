package actividad8;

import util.Meses;

public class Actividad8 {

	public static void main(String[] args) {
		//Pluviometro
		Pluviometro p1 = new Pluviometro("2019", false);
		
		//Medidas
		p1.addPrecipitacion(15, Meses.Febrero);
		p1.addPrecipitacion(15, Meses.Febrero);
		p1.addPrecipitacion(7, Meses.Julio);
		p1.addPrecipitacion(6, Meses.Noviembre);
		p1.addPrecipitacion(105, Meses.Abril);
		
		//Mostrar todo
		p1.mostrarTodo();
	}

}
