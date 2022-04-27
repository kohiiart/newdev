programa
{
	
	funcao inicio()
	{	
		inteiro
			idade,
			idadeA=0,
			contador=0,
			media
//----------------------------------------------------------------------------------------
		enquanto(verdadeiro){
			escreva("Digite uma idade: ")
			leia(idade)

			idadeA+=idade
			se(idade==0){
			pare
			}
			contador = contador + 1
		}
		media= idadeA / contador
		escreva("A média das idades é de: ", media)
//----------------------------------------------------------------------------------------
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 81; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */