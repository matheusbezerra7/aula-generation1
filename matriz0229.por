programa
{
	
	funcao inicio()
	{
		inteiro mat[3][3],l,c,m=0


		para (l=0;l<3;l++){
			
			para(c=0;c<3;c++){
				escreva("Insira um valor : " )
				leia(mat[l][c])


	
			}
		}
	limpa()
	para (l=0;l<3;l++){
			
			para(c=0;c<3;c++){
				
				escreva("[ ",mat[l][c], " ] ")

					
				
			}
			escreva("\n")
		}

		//contador
		para(l=0;l<3;l++){
		para(c=0;c<3;c++){
			se(mat[l][c]>10){
					m ++;
					
					
			}
			
		}
	}
	escreva("Número de dados maiores que 10 : ",m)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */