programa
{
	
	funcao inicio()
	{
		inteiro option=0
		inteiro contadorVei=0, insert, quantidade, soma=0//auxiliares
		cadeia veiculo[200]
		inteiro saldo[200][5]//Coluna 0 = Código do Veículo, 	Coluna 1 = Estoque do Veículo, Coluna 2 = Mov. de Entrada, Coluna 3 = Mov. de Saída 
		
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
				
				saldo[contadorVei][0]=contadorVei
				saldo[contadorVei][1]=0
				contadorVei++
				
			}
//-------------------------------------------------------------------------------------------
			se(option==3){
				se(veiculo[0]==""){
					escreva("Nenhum veículo cadastrado!")
				}
				senao{
				listar(contadorVei, veiculo, saldo)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade do veículo ", "'", veiculo[insert], "'", " no estoque: ", saldo[insert][1], "\n")
				escreva("A movimentação de Entrada foi de: ", saldo[insert][2])
				escreva("\nA movimentação de Saída foi de: ", saldo[insert][3])
				escreva("\nE o estoque total é de: ", saldo[0][4])
				}
			}
//-------------------------------------------------------------------------------------------
			se(option==4){
				listar(contadorVei, veiculo, saldo)
			}
//-------------------------------------------------------------------------------------------
			se(option==5){
				se(veiculo[0]==""){
					escreva("Nenhum veículo cadastrado!")
				}
				senao{
				
				se(soma>=200){
					escreva("Impossível adicionar veículos. Estoque cheio.")
				}
				senao{
				listar(contadorVei, veiculo, saldo)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade de entrada: ")
				leia(quantidade)

				
				se(soma + quantidade <201){
					
					saldo[insert][1]+=quantidade
					soma+=quantidade
					saldo[0][4]=soma
					
					saldo[insert][2]+=quantidade
				}
				senao{
					escreva("Impossível adicionar veículos. Estoque cheio.")
				}
				}
				}
			}
//-------------------------------------------------------------------------------------------

			se(option==6){
				se(veiculo[0]==""){
					escreva("Nenhum veículo cadastrado!")
				}
				senao{
				listar(contadorVei, veiculo, saldo)
				escreva("\n\nSelecione o veículo pelo seu código: ")
				leia(insert)
				escreva("Quantidade de saída: ")
				leia(quantidade)

				se(quantidade>saldo[insert][1]){
					escreva("Erro! Número de Saída maior que o estoque atual")
				}
				senao{
					soma-=quantidade
					saldo[0][4]=soma
					saldo[insert][1]-= quantidade
				
					saldo[insert][3]+=quantidade
				}
				}
			}
//-------------------------------------------------------------------------------------------
		}
//-------------------------------------------------------------------------------------------
	}
	funcao listar(inteiro contVei, cadeia veiculo[], inteiro saldo[][]){

				se(veiculo[0]==""){
					escreva("Nenhum veículo cadastrado!")
				}
				senao{
				escreva("Código   ||   Veículo	||   Estoque	||")
				para(inteiro i=0; i < contVei; i++){
					escreva("\n", saldo[i][0], "        ||   ", veiculo[i], "	||  ", saldo[i][1])
				}
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2413; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {saldo, 9, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */