programa
{
	
	funcao inicio()
	{
		real
			lucro,
			ingressos=120,
			contador=1,
			valorIng=5.00,
			valorTotal=600
//----------------------------------------------------------------------------------------
		enquanto(contador <= 10){
			
		valorTotal = valorIng * ingressos
		lucro= valorTotal - 200

		escreva("\nCom o valor do Ingresso a R$", valorIng, ", foram vendidos ", ingressos, 
				" ingressos e o lucro foi de R$", lucro)
		
				contador+=1
				valorIng = valorIng - 0.50
				ingressos+=26
		}
//----------------------------------------------------------------------------------------

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */