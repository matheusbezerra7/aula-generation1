package exercicios0809;

import java.util.Scanner;

public class exercicio04 {

	public static void main(String[] args)
	{
		float A,B,C;
		double R,S,resab ,resbc;
		
		
				
		Scanner ler = new Scanner(System.in);
		System.out.println("Entre com o valor de A: ");
		A = ler.nextFloat();
		System.out.println("Entre com o valor de B: ");
		B = ler.nextFloat();
		System.out.println("Entre com o valor de C: ");
		C = ler.nextFloat();
		
		resab = A + B;
		resbc = B + C;
		R = Math.pow(resab,2);
		S = Math.pow(resbc,2);
		
		System.out.println("A variavel D é: "+(R+S)/2);
		
	}
}

