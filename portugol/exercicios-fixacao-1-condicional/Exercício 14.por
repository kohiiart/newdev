programa
{
	
	funcao inicio()
	{
		inteiro
			n1,
			n2,
			n3,
			nM = 0
			
		escreva("Digite 3 números:\n")
		leia(n1, n2, n3)

		se (n1==n2 e n1==n3){
			escreva("Números Idênticos")
		}
		senao{
				se (n1>nM){
				nM = n1
				}

				se (n2>nM){
				nM = n2
				}

				se (n3>nM){
				nM = n3
				}
				
				escreva("O maior número é ", nM)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */