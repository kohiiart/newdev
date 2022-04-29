programa
{
	
	funcao inicio(){
		inteiro num[20], vet1[10], vet2[10]

		para(inteiro i=0; i < 20; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}

		para(inteiro i=0; i < 10; i++){
			vet1[i]=num[i]
		}
		para(inteiro i=0; i < 10; i++){
			vet2[i]=num[i+10]
		}
		para(inteiro i=0; i < 10; i++){
		escreva("\nVetor 1: ", vet1[i])
		}
		escreva("\n")
		para(inteiro i=0; i < 10; i++){
		escreva("\nVetor 2: ", vet2[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 5, 10, 3}-{vet1, 5, 19, 4}-{vet2, 5, 29, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */