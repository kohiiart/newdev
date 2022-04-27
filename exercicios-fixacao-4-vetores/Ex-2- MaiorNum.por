programa
{
	
	funcao inicio(){
		
		inteiro num[8], numM=0, ind=0

		para(inteiro i=0; i < 8; i++){
			escreva("Digite um número: ")
			leia(num[i])

			se(num[i]>numM){
				numM=num[i]
				ind=i
			}
			
		}
		
		escreva("O maior número é ", numM," e está no índice ", ind)

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */