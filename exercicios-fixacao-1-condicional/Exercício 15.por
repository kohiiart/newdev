programa
{
	
	funcao inicio()
	{
		inteiro
			n1,
			n2,
			n3,
			nM=0,
			nm=0,
			na=0
			
		escreva("Digite 3 números\n")
		leia(n1, n2, n3)

			se (n1>nM){
			nM = n1
			}
			se (n2>nM){
			nM = n2
			}
			se (n3>nM){
			nM = n3
			}

			se (n1>nm){
			nm = n1
			}
			se (n2<nm){
			nm = n2
			}
			se (n3<nm){
			nm = n3
			}

			se (n1<nM e n1>nm){
			na = n1
			}
			se (n2<nM e n2>nm ){
			na = n2
			}
			se (n3<nM e n3>nm){
			na = n3
			}

			escreva("A ordem crescente dos números é: ", nm, "-", na, "-", nM)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */