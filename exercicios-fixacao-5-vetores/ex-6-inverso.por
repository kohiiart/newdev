programa
{
	
	funcao inicio(){
		inteiro num[10], inverso[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])

			inverso[0]= num[9]
			inverso[1]= num[8]
			inverso[2]= num[7]
			inverso[3]= num[6]
			inverso[4]= num[5]
			inverso[5]= num[4]
			inverso[6]= num[3]
			inverso[7]= num[2]
			inverso[8]= num[1]
			inverso[9]= num[0]
		}

		escreva("O vetor invertido é:\n")
		escreva(inverso[0], " ", inverso[1], " ", inverso[2], " ", inverso[3], " ", inverso[4], " ", 
		inverso[5], " ", inverso[6], " ", inverso[7], " ", inverso[8], " ", inverso[9])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */