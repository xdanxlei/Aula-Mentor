package actividad4;

public class Actividad4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//Llamadas
		Llamada llam1 = new Llamada("985632148", "985462846", 4855);
		LlamadaProvincial llam2 = new LlamadaProvincial("954265845", "973126548", 521 , 2);
		LlamadaProvincial llam3 = new LlamadaProvincial("921579486", "945876248", 33, 1);
		LlamadaProvincial llam4 = new LlamadaProvincial("965524866", "922644854", 103, 3);
		
		//Registros
		Centralita cen1 = new Centralita();
		cen1.registrarLlamada(llam1);
		cen1.registrarLlamada(llam2);
		cen1.registrarLlamada(llam3);
		cen1.registrarLlamada(llam4);
		
		//Informe
		cen1.informe();
	}

}
