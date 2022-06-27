programa
{
	
	funcao inicio()
	{
		inteiro ValorCompra, ValorPagamento, troco
		inteiro c, d, u

		escreva("Insira o Valor da Compra\nR$")
		leia(ValorCompra)

		escreva("Insira o Valor de Pagamento\nR$")
		leia(ValorPagamento)

		troco = ValorPagamento - ValorCompra
		c = troco / 100
		d = troco % 100 / 10
		u = troco % 10 / 1

			
			se(ValorPagamento>ValorCompra)
			{
			escreva("Seu troco é R$", troco, "\n")
			escreva("Em ", c, " notas de 100\n")
			escreva("E ", d, " notas de 10\n")
			escreva("E ", u, " notas de 1")
			}
			senao
			 escreva("Pagamento Negado")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */