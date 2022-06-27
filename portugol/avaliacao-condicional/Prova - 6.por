programa
{
	
	funcao inicio()
	{
		real altura, sexo
		
		escreva("Se você for Mulher, digite 1\nSe for Homem, digite 2\n")
		leia(sexo)
		limpa()

		escreva("Digite sua altura (em metros)\n")
		leia(altura)
		limpa()

		se (sexo==1)
		escreva("Seu peso ideal é ", (altura * 62.1) - 44.7)

		se (sexo==2)
		escreva("Seu peso ideal é ", (altura * 72.7) - 58)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */