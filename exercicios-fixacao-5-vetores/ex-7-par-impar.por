programa
{
	
	funcao inicio(){
		inteiro num[10], novonum[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])
			
		}
		para(inteiro i=0; i < 10; i++){
			se(i % 2 == 0){
				novonum[i] = num[i] / 2
			}
			senao{
				novonum[i] = num[i] * 3
			}
		}
		para(inteiro i=0; i < 10; i++){
			escreva("\nO vetor final é: ", novonum[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 5, 10, 3}-{novonum, 5, 19, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */