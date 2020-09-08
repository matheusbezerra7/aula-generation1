package exercicios0809;

import java.util.Scanner;

public class exercicio01 {

	public static void main(String[] args) 
	{
		int anos,mes,D;
				
		Scanner ler = new Scanner(System.in);
		System.out.println("Escreva sua idade em anos: ");
		anos = ler.nextInt();
		System.out.println("Escreva sua idade em meses: ");
		mes = ler.nextInt();
		System.out.println("Escreva sua idade em dias: ");
		D = ler.nextInt();
		
		D =(D+(anos*365)+(3*30));
		
		System.out.println("Sua idade em dias é: "+D);
		
	}

}
