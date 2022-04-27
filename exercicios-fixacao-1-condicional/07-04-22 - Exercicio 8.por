programa
{
	
	funcao inicio()
	{
	 real SalarioBruto

	 escreva("Insira o Salário Bruto\n R$")
	 leia (SalarioBruto)
	
	 	se (SalarioBruto <= 2000)
	 	escreva("O Salário Líquido é R$", SalarioBruto - SalarioBruto )

	 	senao
	 	escreva("O Salário Líquido é R$", SalarioBruto - SalarioBruto * 0.2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */