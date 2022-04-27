programa
{
	
	funcao inicio()
	{
		real IMC, peso, altura
		
		
		limpa()
		escreva("||--- ------------||\n")
		escreva("||Digite seu Peso||\n")
		escreva("||---------------||\n")
		leia(peso)
		limpa()

		escreva("||-----------------||\n")
		escreva("||Digite sua Altura||\n")
		escreva("||-----------------||\n")
		leia(altura)
		limpa()

		IMC = peso / (altura * altura)
		
			se (IMC < 18.5)
			escreva("Você está abaixo do peso ideal")
			
			se (IMC > 18.5 e IMC < 25)
			escreva("Você no peso ideal")

			se (IMC > 25 e IMC < 30)
			escreva("Você está acima do peso ideal")
			
			se (IMC > 30)
			escreva("Você está Obeso")
			
	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 91; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */