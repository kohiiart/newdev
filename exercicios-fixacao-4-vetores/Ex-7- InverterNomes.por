programa
{
	
	funcao inicio(){
		cadeia num[5], inverso[5]

		para(inteiro i=0; i < 5; i++){
			escreva("Digite um nome: ")
			leia(num[i])

			inverso[0]= num[4]
			inverso[1]= num[3]
			inverso[2]= num[2]
			inverso[3]= num[1]
			inverso[4]= num[0]
		}
		escreva("A lista de nomes é:\n", num[0], " ", num[1], " ", num[2], " ", num[3], " ", num[4])
		escreva("\nA lista de nomes invertida é:\n")
		escreva(inverso[0], " ", inverso[1], " ", inverso[2], " ", inverso[3], " ", inverso[4])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 491; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */