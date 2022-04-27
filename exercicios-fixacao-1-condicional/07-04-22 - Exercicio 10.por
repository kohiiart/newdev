programa
{
	
	funcao inicio()
	{
		real num1, num2, num3, num4, media
		//inteiro para numero, cadeia para texto, Real para comparação

		escreva("||----------------||\n")
		escreva("||Entre com Nota 1||\n")
		escreva("||----------------||\n")
			leia(num1)
		limpa()

		escreva("||----------------||\n")
		escreva("||Entre com Nota 2||\n")
		escreva("||----------------||\n")
			leia(num2)
		limpa()

		escreva("||----------------||\n")
		escreva("||Entre com Nota 3||\n")
		escreva("||----------------||\n")
			leia(num3)
		limpa()

		escreva("||----------------||\n")
		escreva("||Entre com Nota 4||\n")
		escreva("||----------------||\n")
			leia(num4)
		limpa()
		
		media=(num1+num2+num3+num4)/4
		escreva("Media:"+media)

			se (media >=7)
			{
			escreva("\n||-------------------------||\n")
			escreva("||Parabéns! Aluno aprovado!||\n")
			escreva("||-------------------------||\n")
			}
			se (media <7 e media >=3)
			{
			escreva("\n||------------------------------||\n")
			escreva("||Atenção! Aluno em Prova Final!||\n")
			escreva("||------------------------------||\n")
			}
			se (media <3)
			{
			escreva("\n||--------------------------------||\n")
			escreva("||Sentimos muito! Aluno reprovado!||\n")
			escreva("||--------------------------------||\n")
			}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */