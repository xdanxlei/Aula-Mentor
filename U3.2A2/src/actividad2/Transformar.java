package actividad2;

public abstract class Transformar {
	//Decimal
	public static String enDecimal(String numero) {
		int l = numero.length();
		int i = 0;
		int decimal = 0;
		while(l > 0) {
			String cifra = Character.toString(numero.charAt((l--) - 1));
			decimal += Integer.parseInt(cifra) * Math.pow(2, i++);
		}
		
		return Integer.toString(decimal);
	}
	
	//Binario
	public static String enBinario(String numero) {
		int binario = 0;
		int i = 0;
		while(Long.parseLong(numero) > 0) {
			binario += (Integer.parseInt(numero) % 2) * Math.pow(10, i++);
			numero = Integer.toString(Integer.parseInt(numero) / 2);
		}
		return Integer.toString(binario);
	}
}
