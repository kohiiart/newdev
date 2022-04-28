programa
{
	
	funcao inicio()
{
	
		inteiro num[10], multi=1, soma=0
		
		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])

			se (num[i] % 2 == 0){
				multi = num[i]*multi
			}
			senao{
				soma+= num[i]
			}
			}
			escreva("A mult dos pares é ", multi)
			escreva("\nA soma dos ímpares é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */