package actividad6;

public class Matricula {
	//Atributos
	public String provincia;
	public String numero;
	public String letra;
	public Parte parte;
	
	//Constructores
	public Matricula(String prov, String num, String let, String c, String d, double i){
		provincia = prov;
		numero = num;
		letra = let;
		parte = new Parte(c, d, i);
	}
	
	//Getters
	public String getNombre() {
		return provincia + "-" + numero + "-" + letra;
	}
	
	//Mostrar
	public void mostrar() {
		System.out.println("Matrícula: " + getNombre());
		parte.mostrar();
	}
}
