programa
{
	
	funcao inicio()
	{
	 real produto

	 escreva("Insira o valor de compra:\n	R$")
	 leia (produto)
	
	 	se (produto < 200)
	 	escreva("O Valor de venda deve ser R$", produto + produto * 0.5)
												// * 0.5 também pode ser / 2
	 	senao
	 	escreva("O Valor de venda deve ser R$", produto + produto * 0.3)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */