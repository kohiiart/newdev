programa
{
	
	funcao inicio()
	{
	inteiro
		soma = 0,
		media = 0,
		numero = 0,
		nLidos = 0

		enquanto (numero >=0) {
			escreva("Digite um número:\n")
			leia(numero)

			se (numero >=0){
				nLidos += 1
				soma += numero
				media = (media + numero) / nLidos
			}
		}
				escreva("O Total de números lidos foi: ", nLidos, "\n")
				escreva("A soma é: ", soma, "\n")
				escreva("A media é: ", media, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */