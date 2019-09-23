package actividad7;

import trama.*;

public class Actividad7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Entrada
		Entrada en = new Entrada();
		
		//Tramas
		TCP a = new TCP("Hola");
		TCP b = new TCP("Adiós");
		TCP c = new TCP("Saludos");
		TCP d = new TCP("Esto es un TCP");
		
		UDP e = new UDP("Esto es un UDP");
		UDP f = new UDP("Fin");
		
		//Las tramas son enviadas
		en.enviarTrama(a);
		en.enviarTrama(b);
		en.enviarTrama(c);
		en.enviarTrama(d);
		en.enviarTrama(e);
		en.enviarTrama(f);
		
		//Mostrar tramas
		en.mostrar();
	}

}
