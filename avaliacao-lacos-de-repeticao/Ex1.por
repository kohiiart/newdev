programa
{
	
	funcao inicio()
	{
//----------------------------------------------------------------------------------------
		inteiro
			contador,
			tel
		real
			fatA,
			fatS=0
		cadeia
			nome
//----------------------------------------------------------------------------------------
		para(contador=1; contador<=5;contador++){
			escreva("Digite o nome do Cliente: ")
			leia(nome)
			escreva("\nInsira o Telefone do Cliente: ")
			leia(tel)

			limpa()
		}
//----------------------------------------------------------------------------------------
		escreva("Insira o faturamento da loja: ")
		leia(fatA)

		fatS = fatA - 54000
		se(fatA>54000){
			escreva("O faturamento da loja foi superior ao da loja B!\n")
			escreva("O faturamento superou em R$", fatS)
		}

		senao{
			escreva("O faturamento não superou o da loja B!")
		}
//----------------------------------------------------------------------------------------
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */