programa
{
	
	funcao inicio()
		{
		inteiro numero, resto

		escreva("Digite um número\n")
		leia(numero)

		resto = numero % 2

		se (resto == 0)
		escreva("Resultado: ", numero + 5)

		senao
		escreva("Resultado: ", numero + 8)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */