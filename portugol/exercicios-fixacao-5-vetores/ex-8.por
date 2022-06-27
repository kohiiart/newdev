programa
{
	
	funcao inicio(){
		inteiro num[10], numpar[10], numimpar[10], j, troca

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}
		para(inteiro i=0; i < 10; i++){
			se(num[i]%2==0){
				numpar[i]=num[i]
			}
		}

		para(inteiro i=0; i < 10; i++){
			para(j=0; j < 9; j++){
			se(numpar[i]>numpar[i+1]){
				troca=numpar[i]
				numpar[i]=numpar[i+1]
				numpar[i+1]=troca
			}
		}
		}

		para(inteiro i=0; i < 10; i++){
			escreva(numpar[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 498; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 5, 10, 3}-{numpar, 5, 19, 6}-{numimpar, 5, 31, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */