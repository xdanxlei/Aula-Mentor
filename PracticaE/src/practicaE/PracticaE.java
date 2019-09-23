package practicaE;

public class PracticaE {
	public static void main(String[] args)
	{
		//Punto
		Punto A = new Punto(2, 6);
		Punto B = new Punto(4, 1);
		
		System.out.println("La distancia es " + A.calcularDistanciaDesde(B) + ".");
		System.out.println();
		
		//Circulo
		Punto C = new Punto(5,6);
		Circulo cir1 = new Circulo(C, 2);
		
		System.out.println("El area del círculo es " + cir1.calcularArea() + ".");
		System.out.println("El perímetro del círculo es " + cir1.calcularPerimetro() + ".");
		System.out.println("La distancia es " + cir1.calcularDistanciaDesde(B) + ".");
		System.out.println();
		
		//Triangulo
		Punto D = new Punto(3,2);
		Triangulo tri1 = new Triangulo(2, 5, 2, 3, 4, 5);
		
		System.out.println("El area del triángulo es " + tri1.calcularArea() + ".");
		System.out.println("El perímetro del triángulo es " + tri1.calcularPerimetro() + ".");
		System.out.println("La distancia es " + tri1.calcularDistanciaDesde(D) + ".");
	}
}
