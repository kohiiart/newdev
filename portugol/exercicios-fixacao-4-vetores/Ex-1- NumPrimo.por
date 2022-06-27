programa
{
	
	funcao inicio()
{
	inteiro num[5], div=0, val=1


		para(inteiro i=0; i < 5; i++){
			escreva("Digite um número: ")
			leia(num[i])
			}
		
		para(inteiro i=0; i < 5; i++){
			enquanto(val<=num[i]){
			se(num[i] % val == 0){
				div++
			}
			val++
			}
			
			se(div==2){
			escreva("O número ", num[i], "é primo")
		}
		}
		
	}
	funcao 
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */