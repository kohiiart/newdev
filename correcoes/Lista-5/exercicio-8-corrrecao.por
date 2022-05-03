programa
{
	
	funcao inicio()
	{
		
		inteiro numPar[10], numImpar[10], numDig=0, contaPar=0, contaImpar=0

		enquanto(contaPar + contaImpar < 10){
			escreva("Digite um número: ")
			leia(numDig)

			se(numDig % 2 == 0){
				numPar[contaPar] = numDig
				contaPar++
			}
			senao{
				numImpar[contaImpar] = numDig
				contaImpar++
			}
		}
		listaPares(numPar, contaPar)
		listaImpares(numImpar, contaImpar)
		juncao(numPar, contaPar, numImpar, contaImpar)
	}
	funcao listaPares(inteiro numPar[], inteiro contaPares){
		inteiro troca
		para(inteiro j=0; j < contaPares; j++){
			para(inteiro i=0; i < contaPares - 1; i++){
				se(numPar[i] < numPar[i+1]){
				troca=numPar[i]
				numPar[i]=numPar[i+1]
				numPar[i+1]=troca
				}
			}
		}
		para(inteiro i=0; i < contaPares; i++){
			escreva("\nOs números Pares são: ", numPar[i])
		}
	
	}
	funcao listaImpares(inteiro numImpar[], inteiro contaImpares){
		inteiro troca
		para(inteiro j=0; j < contaImpares; j++){
			para(inteiro i=0; i < contaImpares - 1; i++){
				se(numImpar[i] > numImpar[i+1]){
				troca=numImpar[i]
				numImpar[i]=numImpar[i+1]
				numImpar[i+1]=troca
				}
			}
		}
		escreva("\n\n")
		para(inteiro i=0; i < contaImpares; i++){
			escreva("\nOs números Ímpares são: ", numImpar[i])
		}
	
	}
	funcao juncao(inteiro numPar[], inteiro contaPares, inteiro numImpar[], inteiro contaImpares){
		inteiro numeros[10]

		para(inteiro i=0; i < contaPares + i; i++){
			numeros[i] = numPar[i]
			contaPares--
			escreva(" ", numeros[i])
		}
		para(inteiro i=0; i < contaImpares + i; i++){
			numeros[i+contaPares] = numImpar[i]
			contaImpares--
			escreva(" ", numeros[i])
		}
	}
	 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1606; 
 * @DOBRAMENTO-CODIGO = [29, 28, 27, 36, 43, 53];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */