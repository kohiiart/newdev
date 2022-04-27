programa
{
	
	funcao inicio()
	{
		inteiro contador = 0, valor=0, valorA=0

		escreva("Digite um número\n")
		leia(valor)
		
		enquanto(contador >= 0)
		{

			valorA = valor * 3
			escreva("O resultado é: ", valorA, "\n") 

			se(valor<valorA){
				valor= valorA				
			}
			
			se (valorA > 100)
			pare

			contador = contador + 1
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */