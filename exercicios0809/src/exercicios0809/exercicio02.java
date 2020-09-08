package exercicios0809;

import java.util.Scanner;

public class exercicio02 {

	public static void main(String[] args) {
		
		int dia,idadeEmAnos,idadeEmMeses,idadeEmDias;
		
		
		Scanner ler = new Scanner(System.in);
		System.out.println("Informe quantos dias de vida você tem : ");
		dia = ler.nextInt();
		
		idadeEmAnos = dia /365;
		System.out.println("idade em Anos : "+idadeEmAnos);
		
		idadeEmMeses = idadeEmAnos * 12;
		System.out.println("idade em Meses : "+idadeEmMeses);
		
		
		System.out.println("idade em Dias : "+dia);
		
		
		
	}


}

