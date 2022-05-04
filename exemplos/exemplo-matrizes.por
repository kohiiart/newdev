programa
{
	
	funcao inicio(){
	/*	inteiro matriz[2][2]

		//Posição: 1º[] == linhas  2º [] == colunas
		matriz[0][1] = 10
		matriz[1][1] = 5
		matriz[0][0] = 9
		matriz[1][0] = 7

		para(inteiro linha=0; linha < 2; linha++){
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva(",", matriz[linha][coluna])
		}
		} */

		cadeia alunos[3] = {
			"Bruno",
			"Maria",
			"Antedeguemon"
		}
		
		inteiro notas[3][3] = {
			{6, 7, 6}, 
			{5, 4, 6}, 
			{8, 9, 10}
		}
		inteiro medias[3]
		

		para(inteiro linha=0; linha < 3; linha++){
			 inteiro soma=0
			para(inteiro i=0; i < 3; i++){
				soma += notas[linha][i]
		}
		medias[linha] = soma / 3
		escreva("		",medias[linha])
		}

		inteiro numeros[2][2]
		para(inteiro l=0; l < 2; l++){
			para(inteiro c=0; c < 2; c++){
				escreva("Digite um número: ")
				leia(numeros[l][c])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 739; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 42, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */