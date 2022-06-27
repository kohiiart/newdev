programa
{
	
	funcao inicio()
{
		inteiro num[10], cubo[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])
			cubo[i]= num[i] * num[i]
 		}
		para(inteiro i=0; i < 10; i++){
			escreva("\nO número ao cubo é: ", cubo[i])			
 		}

 		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */