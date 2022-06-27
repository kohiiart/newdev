programa
{
	
	funcao inicio()
{
		inteiro altura[10], media=0

		para(inteiro i=0; i < 10; i++){
			escreva("Digite a altura do atleta: ")
			leia(altura[i])
			
			media=(altura[0]+altura[1]+altura[2]+altura[3]+altura[4]+altura[5]
			+altura[6]+altura[7]+altura[8]+altura[9])/10
 		}
 		para(inteiro i=0; i < 10; i++){
			se(altura[i]>media){
				escreva("\nAs aturas acima da média são: ", altura[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 359; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 6, 22, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */