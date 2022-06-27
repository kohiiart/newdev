programa
{
	
	funcao inicio()
	{
		inteiro contador = 0
		real altura=0.0, maiorH=0.0, menorH=0.0
		
		enquanto(contador < 6)
		{
			escreva("Digite sua altura\n")
			leia(altura)


			se (altura > maiorH){
				maiorH=altura 
			}

			se (altura < menorH){
				menorH = altura
			}

			contador = contador + 1
		}

		escreva("A menor altura é: ", menorH, "\n")
		escreva("A maior altura é: ", maiorH, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */