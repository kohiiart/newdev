programa
{
	
	funcao inicio()
	{
		inteiro option=0, estoque[200]
		inteiro contadorVei=0, insert, quantidade, soma=0, somaA//auxiliares
		cadeia veiculo[200]
		
//-------------------------------------------------------------------------------------------
		enquanto(option!=1){
			escreva("\n		1- Sair	")
			escreva("\n		2- Cadastrar Veículo	")
			escreva("\n		3- Checar Saldo de Veículo	")
			escreva("\n		4- Listar Veículos 	")
			escreva("\n		5- Entrada de Veículo	")
			escreva("\n		6- Saída de Veículo	")
			escreva("\n\n		Selecione uma opção: ")
			leia(option)
			limpa()
//-------------------------------------------------------------------------------------------			
			se(option==2){
				escreva("Insira o nome do veículo: ")
				leia(veiculo[contadorVei])
				estoque[contadorVei]=0
				contadorVei++
			}
//-------------------------------------------------------------------------------------------
			se(option==3){
				listar(contadorVei, veiculo, estoque)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade do veículo ", "'", veiculo[insert], "'", " no estoque: ", estoque[insert], "\n")
				escreva("E o estoque total é de: ", soma)
			}
//-------------------------------------------------------------------------------------------
			se(option==4){
				listar(contadorVei, veiculo, estoque)
			}
//-------------------------------------------------------------------------------------------
			se(option==5){
				
				se(soma>=200){
					escreva("Impossível adicionar veículos. Estoque cheio.")
				}
				senao{
				listar(contadorVei, veiculo, estoque)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade de entrada: ")
				leia(quantidade)

				somaA= soma + quantidade
				se(somaA<201){
					estoque[insert]+=quantidade
					soma+=estoque[insert]
				}
				senao{
					escreva("Impossível adicionar veículos. Estoque cheio.")
				}
				}
				
			}
//-------------------------------------------------------------------------------------------

			se(option==6){
				listar(contadorVei, veiculo, estoque)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade de saída: ")
				leia(quantidade)

				se(quantidade>estoque[insert]){
					escreva("Erro! Número de Saída maior que o estoque atual")
				}
				senao{
					estoque[insert]-= quantidade
					soma-=quantidade
				}
			}
//-------------------------------------------------------------------------------------------
		}
//-------------------------------------------------------------------------------------------
	}
	funcao listar(inteiro contVei, cadeia veiculo[], inteiro estoque[]){

				se(veiculo[0]==""){
					escreva("Nenhum veículo cadastrado!")
				}
				senao{
				escreva("Código   ||   Veículo	||   Estoque	||")
				para(inteiro i=0; i < contVei; i++){
					escreva("\n", i, "        ||   ", veiculo[i], "	||  ", estoque[i])
				}
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2788; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma, 7, 45, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */