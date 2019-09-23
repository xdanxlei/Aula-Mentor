package actividad3;

public class Actividad3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Titulares
		Titular Paco = new Titular("Paco", "Rodríguez", 27);
		Titular Carmen = new Titular("Carmen", "Pérez", 27);
		Titular Lucia = new Titular("Lucía", "Rodríguez", 27);
		Titular Maria = new Titular("María", "García", 27);
		
		//Cuentas
		CuentaCorriente c1 = new CuentaCorriente(Paco, "8458-6859-8547-2354", 4856.55);
		CuentaCorriente c2 = new CuentaCorriente(Carmen, "1459-2459-6745-2145");
		
		CuentaAhorro c3 = new CuentaAhorro(Paco, "8458-6859-8547-2354", 845.60, (double) 15);
		CuentaAhorro c4 = new CuentaAhorro(Lucia, "5674-9824-6749-2315", (double) 6);
		CuentaAhorro c5 = new CuentaAhorro(Maria, "7485-8954-2648-2731");
		
		//Operaciones varias
		Carmen.mostrar();
		System.out.println();
		Lucia.mostrar();
		System.out.println();
		
		c1.mostrarCuenta();
		System.out.println();
		c2.mostrarCuenta();
		System.out.println();
		
		c3.calcularInteres();
		c4.calcularInteres();
		c5.calcularInteres();
		
		c3.mostrarCuenta();
		System.out.println();
		c4.mostrarCuenta();
		System.out.println();
		c5.mostrarCuenta();
		System.out.println();
		
		if(c1.igualA(c3))
		{
			System.out.println("c1 y c3 son iguales.");
		}
		else
		{
			System.out.println("c1 y c3 no son iguales.");
		}
		
		System.out.println();
		
		if(c4.igualA(c3))
		{
			System.out.println("c4 y c3 son iguales.");
		}
		else
		{
			System.out.println("c4 y c3 no son iguales.");
		}
	}

}
