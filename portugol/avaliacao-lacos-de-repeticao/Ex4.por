programa
{
	
	funcao inicio()
	{
		inteiro
			contador=1
		real
			valor,
			valorTP=0,
			valorA=0,
			valorTV=0,
			valorT=0
		cadeia
			V = "V",
			P = "P",
			pagamento
//----------------------------------------------------------------------------------------
		para(contador = 1; contador <= 5; contador++){
			escreva("Selecione a forma de Pagamento:\n(V) Á vista\n(P)Á Prazo\n")
			leia(pagamento)
//----------------------------------------------------------------------------------------
			se(pagamento==V){
				
				escreva("\nForma de pagamento: á vista")
				escreva("\nInsira o valor: ")
				leia(valor)

				valorTV=valor+valorA
				se(valor>valorA){
					valorA=valor
				}
			}
//----------------------------------------------------------------------------------------
			se(pagamento==P){
				escreva("\nForma de pagamento: á prazo") 
				escreva("\nInsira o valor: ")
				leia(valor)

				valorTP+= valor + (valor * 0.1)
			}
//----------------------------------------------------------------------------------------
		}
		valorT+= valorTP+valorTV
//----------------------------------------------------------------------------------------
		limpa()
		escreva("O valor total das Vendas foi de R$", valorT)
		escreva("\nO valor total das Vendas à vista foi de R$", valorTV)
		escreva("\nO valor total das Vendas à prazo foi de R$", valorTP,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 943; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */