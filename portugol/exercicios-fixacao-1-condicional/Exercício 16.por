programa
{
	
	funcao inicio()
	{
	cadeia
		mun
	inteiro
		hab,
		votos,
		eleitores

		escreva("Digite o nome do Município\n")
		leia(mun)
		escreva("Insira o número de habitantes do Município\n")
		leia(hab)
		escreva("Insira a quantidade de eleitores\n")
		leia(eleitores)
		escreva("Insira a quantidade de votos do candidato mais votado\n")
		leia(votos)

		se (votos>eleitores){
			escreva("Erro")
		}
		senao
		{
			se(eleitores>200000){
				se(votos>eleitores/2){
				escreva("--Não haverá Segundo Turno")
				}
				senao
				escreva("Haverá Segundo Turno")
			}
			senao
			escreva("Não haverá Segundo Turno")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */