programa
{
	
	funcao inicio()
	{
		inteiro
			num,
			numEn=0,
			contador=1
//----------------------------------------------------------------------------------------
		para(contador = 1; contador <= 3; contador++){
			
			escreva("Insira um Número: ")
			leia(num)

			se(num>=30 e num<=90){
				numEn = numEn + 1
			}
		}
//----------------------------------------------------------------------------------------
		escreva("\nA quantidade de números entre 30 e 90 é de ", numEn)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */