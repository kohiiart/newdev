programa
{
	
	funcao inicio()
	{	inteiro digitado
		cadeia mes[13] = {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", 
					   "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}

		para(inteiro i=0; i < 999; i++){
			escreva("\nDigite um número entre 1 e 12: ")
			leia(digitado)

			se(digitado==0){
				pare
			}
			escreva("\nO mês de número ", digitado, " é o mês de ", mes[digitado])

		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */