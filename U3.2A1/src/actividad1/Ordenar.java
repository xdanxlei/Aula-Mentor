package actividad1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.ListIterator;
import java.util.Scanner;

public abstract class Ordenar {
	public static boolean Desordenado;
	
	//Método de la burbuja
	public static ArrayList<Integer> burbuja(ArrayList<Integer> l) {
		Desordenado = true;
		while(Desordenado) {
			Desordenado = false;
			l = iteracionBurbuja(l);
		}
		return l;
	}
	
	public static ArrayList<Integer> iteracionBurbuja(ArrayList<Integer> l) {
		int i = 1;
		ListIterator<Integer> iter = l.listIterator();
		iter.next();
		boolean hasNextOfNext = iter.hasNext();
		iter.previous();
		while(hasNextOfNext) {
			if(l.get(i - 1)> l.get(i)) {
				Collections.swap(l, i - 1, i);
				Desordenado = true;
			}
			i++;
			iter.next();
			iter.next();
			hasNextOfNext = iter.hasNext();
			iter.previous();
		}
		return l;
	}
	
	public static void entrada(ArrayList<Integer> l) {
		Scanner scan = new Scanner(System.in);
		System.out.print("Introduzca un número: ");
		l.add(Integer.parseInt(scan.nextLine()));
		System.out.print("Introduzca el siguiente número: ");
		l.add(Integer.parseInt(scan.nextLine()));
		System.out.print("Introduzca el siguiente número (t para terminar): ");
		while(scan.hasNextInt()) {
			l.add(Integer.parseInt(scan.nextLine()));
			System.out.print("Introduzca el siguiente número (t para terminar): ");
		}
		scan.close();
	}
	
	public static void salida(ArrayList<Integer> l) {
		ListIterator<Integer> iter = l.listIterator();
		while(iter.hasNext()) {
			System.out.print(iter.next() + " ");
		}
		System.out.println();
	}
}
