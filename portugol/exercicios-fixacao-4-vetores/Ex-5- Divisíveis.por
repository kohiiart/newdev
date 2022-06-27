programa
{
	
	funcao inicio(){
		inteiro num[10], div, divisiveis[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}
		
		escreva("\nDigite um divisor: ")
		leia(div)

		para(inteiro i=0; i < 10; i++){
			se(num[i] % div == 0){
				divisiveis[i]=num[i]
			}
			se(divisiveis[i] != 0){
			escreva("O número ", divisiveis[i], " é divisível pelo valor informado!\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 5, 10, 3}-{divisiveis, 5, 24, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */