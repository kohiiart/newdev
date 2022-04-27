programa
{
	
	funcao inicio()
	{	
		inteiro
			num,
			resul,
			multi=0
//----------------------------------------------------------------------------------------
		escreva("Insira um número: ")
		leia(num)
		
		para(inteiro i=0; i < 10; i++){
			multi++
			resul = num * multi
			escreva("\n",num, " x ", multi, " = ", resul)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */