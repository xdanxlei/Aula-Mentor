/*
 * @(#)Lector.java	1.1 27-Nov-2004
 *
 * Copyright (c) 2004 José M. Ordax. All rights reserved.
 * 
 * This program and the accompanying materials
 * are made available under the terms of the MIT License
 * which accompanies this distribution, and is available at
 * http://www.opensource.org/licenses/mit-license.html
 */

package actividad5;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * La clase <code>Lector</code> sirve para leer datos de distintos
 * tipos por el teclado. Posee un método estático para leer cada tipo.
 * <p><p/>
 * Un ejemplo de su uso sería:
 * <blockquote><pre>
 *     System.out.println("Introduzca un String: ");
 *     String unString = Lector.leerString();
 *     System.out.println("El String introducido es: " + unString);
 * </pre></blockquote>
 * <p>
 *  Al realizar operaciones de entrada/salida o conversiones entre tipos
 *  se pueden producir problemas (excepciones en la tecnología Java) como
 *  por ejemplo {@link java.lang.NumberFormatException} o
 *  {@link java.io.IOException}.
 *  Todos estos problemas están controlados y gestionados por la clase 
 *  <code>Lector</code> y en caso de producirse, se mostrará un mensaje
 *  de error por pantalla explicando el motivo.
 *
 * @author  José M. Ordax
 * @version 1.1, 27-Nov-2004
 * @see     java.lang.System#in
 * @see     java.io.InputStream
 * @see     java.io.InputStreamReader
 * @see     java.io.BufferedReader
 * @see     java.io.IOException
 */
public class Lector 
{
	// Atributos.
	private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
	// Constructor.
	private Lector()
	{
		super();
	}
	
	/**
     * Lee un byte por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el byte introducido o 0 si se produjo algún problema.
     */
	public static byte leerByte()
	{
		byte tmp = 0;
		try 
		{
			tmp = Byte.parseByte(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un byte.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}

	/**
     * Lee un short por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el short introducido o 0 si se produjo algún problema.
     */
	public static short leerShort()
	{
		short tmp = 0;
		try 
		{
			tmp = Short.parseShort(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un short.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
	
	/**
     * Lee un char por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el primer char introducido o un blanco si se produjo algún problema.
     */
	public static char leerChar()
	{
		char tmp = ' ';
		try 
		{
			tmp = br.readLine().charAt(0);
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}

	/**
     * Lee un int por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el int introducido o 0 si se produjo algún problema.
     */
	public static int leerInt()
	{
		int tmp = 0;
		try 
		{
			tmp = Integer.parseInt(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un int.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
	
	/**
     * Lee un long por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el long introducido o 0 si se produjo algún problema.
     */
	public static long leerLong()
	{
		long tmp = 0;
		try 
		{
			tmp = Long.parseLong(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un long.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}

	/**
     * Lee un float por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el float introducido o 0.0 si se produjo algún problema.
     */
	public static float leerFloat()
	{
		float tmp = 0;
		try 
		{
			tmp = Float.parseFloat(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un float.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
	
	/**
     * Lee un double por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el double introducido o 0.0 si se produjo algún problema.
     */
	public static double leerDouble()
	{
		double tmp = 0;
		try 
		{
			tmp = Double.parseDouble(br.readLine());
		}
		catch (NumberFormatException ex) 
		{
			System.out.println("Error: el dato introducido no se puede convertir en un double.");
			ex.printStackTrace();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
	
	/**
     * Lee una cadena de caracteres por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     el string introducido o <code>null</code> si se produjo algún problema.
     */
	public static String leerString()
	{
		String tmp = null;
		try 
		{
			tmp = br.readLine();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
	
	/**
     * Lee un boolean por teclado. Utiliza la tecla "Enter" para indicar el final del dato.
     *
     * @return     <code>false</code> en cualquier caso a no ser que se introduzca la cadena "true".
     */
	public static boolean leerBoolean()
	{
		boolean tmp = false;
		try 
		{
			tmp = new Boolean(br.readLine()).booleanValue();
		}
		catch (IOException ex) 
		{
			System.out.println("Error: hubo un problema en la operación de entrada de datos.");
			ex.printStackTrace();
		}
		catch(Exception ex)
		{
			System.out.println("Error: hubo un problema no controlado.");
			ex.printStackTrace();
		}
		return tmp;
	}
}