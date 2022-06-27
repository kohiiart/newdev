programa
{
	
	funcao inicio()
	{
		real
			ValorDaCompra=500,
			valorFinal,
			desconto=0.00,
			contador=1,
			porcentagemDeDesconto=0.01
//----------------------------------------------------------------------------------------
		enquanto(contador <= 25){
		valorFinal= ValorDaCompra - (ValorDaCompra * porcentagemDeDesconto)

		escreva("\nO valor é ", ValorDaCompra, "  ||  O desconto é de ", desconto, 
				"%  ||  O valor final é de  ", valorFinal)
		
				contador+=1
			
				ValorDaCompra = ValorDaCompra + 100
				porcentagemDeDesconto += 0.01
				desconto+=1
				
		}
//----------------------------------------------------------------------------------------

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */