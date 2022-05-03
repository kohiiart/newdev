programa
{
	
	funcao inicio(){
//-------------------------------------------------------------------------------------------	
		cadeia 
			filme[3],
			filmeNovo
		inteiro 
			option,
			indice

			
		para(inteiro i=0; i < 3; i++){
		escreva("||---------------------------------------||\n")
		escreva("||------------Insira 3 filmes------------||\n")
		escreva("||---------------------------------------||\n")
		leia(filme[i])

		limpa()
		}

		enquanto(1>0){
		escreva("||---------------------------------------||\n")
		escreva("||----------Selecione uma opção----------||\n")
		escreva("||---------------------------------------||\n\n")
		escreva("   (1)-------> Substituir um filme\n")
		escreva("   (2)-------> Remover um filme\n")
		escreva("   (3)-------> Listar filmes\n")
		escreva("   (4)-------> Sair\n\n")
		leia(option)
		limpa()

			se(option==1){
				escreva("||---------------------------------------||\n")
				escreva("||    Escolha um filme para substituir:  ||\n")
				escreva("||---------------------------------------||\n")
				leia(indice)
				
				escreva("\n||---------------------------------------||\n")
				escreva("||       Qual filme entrará no lugar:     ||\n")
				escreva("||---------------------------------------||\n")
				leia(filmeNovo)
				filme[indice] = filmeNovo
			}
			se(option==2){
				escreva("||---------------------------------------||\n")
				escreva("||     Escolha um filme para remover:    ||\n")
				escreva("||---------------------------------------||\n")
				leia(indice)
				filme[indice] = ""								
			}
			se(option==3){
				escreva("||---------------------------------------||\n")
				escreva("||         Os Filmes na lista são:       ||\n")
				escreva("||---------------------------------------||\n\n")
				escreva("             0-", filme[0], "\n")
				escreva("             1-", filme[1], "\n")
				escreva("             2-", filme[2], "\n")			
			}
			se(option==4){
				pare
			}
		}
//-------------------------------------------------------------------------------------------	
//sair, cadastro, listar, consulta saldo, entrada, saída	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2099; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */