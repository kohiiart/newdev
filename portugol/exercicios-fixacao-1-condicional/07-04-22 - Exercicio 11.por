programa
{
	
	funcao inicio()
	{
		inteiro
			a,
			b,
			c

		escreva("Digite as medidas dos lados A, B e C do Triângulo\n")
		leia(a, b, c)

		se(a==b e a==c){
			escreva("O triângulo é Equilátero")
		}
		senao{
			se(a==b ou a==c ou b==c){
				escreva("O triângulo é Isósceles")
			}
			senao
			escreva("O triângulo é Escaleno")
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */