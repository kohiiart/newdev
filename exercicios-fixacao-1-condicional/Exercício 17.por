programa
{
	
	funcao inicio()
	{
	inteiro
		km,
		cons
	cadeia
		A="A",
		B="B",
		C="C", 
		tipoInfo
		
		escreva("Informe se o carro é do tipo A, B ou C\n")
		leia(tipoInfo)

		se (tipoInfo == A ou tipoInfo == B ou tipoInfo == C){
			escreva("Informe o percurso em km do veículo\n")
			leia(km)


			se (tipoInfo == A){
			cons = km / 8

			escreva("O consumo estimado de combustível foi de: ", cons, " Litros por km")
			}

			se (tipoInfo == B){
			cons = km / 9

			escreva("O consumo estimado de combustível foi de: ", cons, " Litros por km")
			}

			se (tipoInfo == C){
			cons = km / 12

			escreva("O consumo estimado de combustível foi de: ", cons, " Litros por km")
			}
		}
		senao
		escreva("Tipo de Veículo Inválido!")
			
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */