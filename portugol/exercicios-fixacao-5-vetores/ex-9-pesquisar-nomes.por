programa
{
	
	funcao inicio(){
		cadeia nome[10], digitado

		para(inteiro i=0; i < 10; i++){
			escreva("Digite um nome: ")
			leia(nome[i])
		}

		escreva("Pesquise um nome: ")
		leia(digitado)

		para(inteiro i=0; i < 10; i++){
			se(digitado==nome[i]){
				escreva("\n", i, " - ACHEI")
			}
			senao{
				escreva("\n", i, " - NÃO ACHEI")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */