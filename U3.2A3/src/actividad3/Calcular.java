package actividad3;

public abstract class Calcular {
	public static double Potencia(double base, int exponente) {
		double resultado;
		if (exponente == 0) {
			resultado = 1;
		}
		else if (exponente > 0) {
			resultado = base;
			while (exponente > 1) {
				resultado *= base;
				--exponente;
			}
		}
		else {
			resultado = 1 / base;
			while (exponente < -1) {
				resultado /= base;
				++exponente;
			}
		}
		return resultado;
	}
}
