package actividad6;

import java.util.ArrayList;

public class Taller {
	//Atributos
	public ArrayList<Matricula> lista = new ArrayList<Matricula>();
	
	//A�adir
	public void addMatricula () {
		String prov;
		String num;
		String let;
		String c;
		String d;
		double i;
		System.out.print("C�digo de provincia: ");
		prov = Lector.leerString();
		System.out.print("Numero: ");
		num = Lector.leerString();
		System.out.print("Letra: ");
		let = Lector.leerString();
		System.out.print("C�digo del parte: ");
		c = Lector.leerString();
		System.out.print("Descripci�n: ");
		d = Lector.leerString();
		System.out.print("Importe: ");
		i = Lector.leerDouble();
		Matricula M = new Matricula(prov, num, let, c, d, i);
		lista.add(M);
	}
	
	//Eliminar
	public void eliminarMatricula (String nombre) {
		int s = lista.size() - 1;
		while(s > -1) {
			if (lista.get(s).getNombre().compareTo(nombre) == 0) {
				lista.remove(lista.get(s));
			}
			s--;
		}
	}
	
	//Listado
	public void listar() {
		int s = lista.size();
		int i = 0;
		while(s > i) {
			System.out.println(lista.get(i).getNombre());
			i++;
		}
	}
	
	//Mostrar
	public void mostrar() {
		int s = lista.size();
		int i = 0;
		while(s > i) {
			lista.get(i).mostrar();
			System.out.println();
			i++;
		}
	}
	
	//Procesar opcion
	public void procesarOpcion(int opcion) {
		if (opcion == 1) {
			System.out.println();
			addMatricula();
			System.out.println();
		} else if (opcion == 2) {
			System.out.println();
			System.out.print("Matr�cula: ");
			eliminarMatricula(Lector.leerString());
			System.out.println();
		} else if (opcion == 3) {
			System.out.println();
			listar();
			System.out.println();
		} else if (opcion == 4) {
			System.out.println();
			mostrar();
		}
	}
}