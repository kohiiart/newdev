programa
{
	
	funcao inicio()
{
		inteiro num[5]

		para(inteiro i=0; i < 5; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}
		escreva("Os números digitados foram:\n-> ", num[0], "\n-> ", num[1], "\n-> ", num[2], "\n-> ", num[3], "\n-> ", num[4], "\n")
		escreva("E sua soma é ", soma(num[0], num[1], num[2], num[3], num[4]))

	}
	funcao inteiro soma(inteiro n1, inteiro n2, inteiro n3, inteiro n4, inteiro n5){
		
		retorne n1+n2+n3+n4+n5
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 456; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 6, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */