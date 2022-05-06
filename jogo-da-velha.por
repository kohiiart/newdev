programa
{
	
	funcao inicio()	//Jogo da Velha
	{	cadeia posicao[3][3] = {{"1", "2", "3"}, {"4", "5", "6"}, {"7", "8", "9"}}, enter="" 
		inteiro simbolo, option, vez=0, vencedor=0
		

		escreva("	JOGO DA SUA TIA \n	 aquela véia\n")
		escreva("\n-->PRESSIONE ENTER PARA JOGAR<--")
		
		leia(enter)
		limpa()

		escreva("\n-->JOGADOR 1 SELECIONE SEU SIMBOLO<--\n	(X inicia jogando)")
		escreva("\n\n1 --> X <--")
		escreva("\n2 --> O <--\n")
		leia(simbolo)
		limpa()

		se(simbolo!=1 e simbolo!=2){
			escreva("Opcão inválida!")
		}
		se(simbolo==1){
			escreva("JOGADOR 1 SELECIONOU X")
			escreva("\nJOGADOR 2 FICOU COM O")
			escreva("\n\n-->PRESSIONE ENTER PARA INICIAR<--")
			leia(enter)
			limpa()

			para(inteiro turno=1; turno <= 9; turno++){
		
					se(posicao[0][0]==posicao[0][1] e posicao[0][0]==posicao[0][2]
					ou posicao[1][0]==posicao[1][1] e posicao[1][0]==posicao[1][2]
					ou posicao[2][0]==posicao[2][1] e posicao[2][0]==posicao[2][2]
					
					ou posicao[0][0]==posicao[1][0] e posicao[0][0]==posicao[2][0]
					ou posicao[0][1]==posicao[1][1] e posicao[0][1]==posicao[2][1]
					ou posicao[0][2]==posicao[1][2] e posicao[0][2]==posicao[2][2]
					
					ou posicao[0][0]==posicao[1][1] e posicao[0][0]==posicao[2][2]
					ou posicao[2][0]==posicao[1][1] e posicao[2][0]==posicao[0][2]
					){
							
					vencedor=vez
					}
					senao{
						vencedor=3
					}
					
					se(vencedor==1){
						resul(posicao)
						escreva("Jogador 1 é o vencedor!")
						pare
					}
					se(vencedor==2){
						resul(posicao)
						escreva("Jogador 2 é o vencedor!")
						pare
					}
					
						
				se(turno%2!=0){
					vez=1
					j1(posicao, vez)
					leia(option)
					xis(option, posicao, vez)
				}					
				senao{
					vez=2
					j1(posicao, vez)
					leia(option)
					bolinha(option, posicao, vez)
				}								
			}
			se(vencedor==3){
						resul(posicao)
						escreva("Deu velha!!")
						
					}
			
		}

//----------------------------------------------------------------------		
		
		se(simbolo==2){
			escreva("JOGADOR 1 SELECIONOU O")
			escreva("\nJOGADOR 2 FICOU COM X")
			escreva("\n\n-->PRESSIONE ENTER PARA INICIAR<--")
			leia(enter)
			limpa()	

				para(inteiro turno=1; turno <= 9; turno++){

					se(posicao[0][0]==posicao[0][1] e posicao[0][0]==posicao[0][2]
					ou posicao[1][0]==posicao[1][1] e posicao[1][0]==posicao[1][2]
					ou posicao[2][0]==posicao[2][1] e posicao[2][0]==posicao[2][2]
					
					ou posicao[0][0]==posicao[1][0] e posicao[0][0]==posicao[2][0]
					ou posicao[0][1]==posicao[1][1] e posicao[0][1]==posicao[2][1]
					ou posicao[0][2]==posicao[1][2] e posicao[0][2]==posicao[2][2]
					
					ou posicao[0][0]==posicao[1][1] e posicao[0][0]==posicao[2][2]
					ou posicao[2][0]==posicao[1][1] e posicao[2][0]==posicao[0][2]
					){
							
					vencedor=vez
					}

					se(vencedor==1){
						resul(posicao)
						escreva("Jogador 1 é o vencedor!")
						pare
					}
					se(vencedor==2){
						resul(posicao)
						escreva("Jogador 2 é o vencedor!")
						pare
					}
				
				se(turno%2!=0){
					vez=1
					j1(posicao, vez)
					leia(option)
					bolinha(option, posicao, vez)
				}
				senao{
					vez=2
					j1(posicao, vez)
					leia(option)
					xis(option, posicao, vez)
				}
			}
		}

		
	}
	funcao xis(inteiro option, cadeia posicao[][], inteiro vez){			
		
		se(option==1){
			se(posicao[0][0]=="O" ou posicao[0][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][0]="X"
			}
		}
		se(option==2){
			se(posicao[0][1]=="O" ou posicao[0][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][1]="X"
			}
		}
		se(option==3){
			se(posicao[0][2]=="O" ou posicao[0][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][2]="X"
			}
		}
		se(option==4){
			se(posicao[1][0]=="O" ou posicao[1][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][0]="X"
			}
		}
		se(option==5){
			se(posicao[1][1]=="O" ou posicao[1][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][1]="X"
			}
		}
		se(option==6){
			se(posicao[1][2]=="O" ou posicao[1][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][2]="X"
			}
		}
		se(option==7){
			se(posicao[2][0]=="O" ou posicao[2][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][0]="X"
			}
		}
		se(option==8){
			se(posicao[2][1]=="O" ou posicao[2][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][1]="X"
			}
		}
		se(option==9){
			se(posicao[2][2]=="O" ou posicao[2][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][2]="X"
			}
		}
		
	}
	funcao bolinha(inteiro option, cadeia posicao[][], inteiro vez){
		se(option==1){
			se(posicao[0][0]=="O" ou posicao[0][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][0]="O"
			}
		}
		se(option==2){
			se(posicao[0][1]=="O" ou posicao[0][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][1]="O"
			}
		}
		se(option==3){
			se(posicao[0][2]=="O" ou posicao[0][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[0][2]="O"
			}
		}
		se(option==4){
			se(posicao[1][0]=="O" ou posicao[1][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][0]="O"
			}
		}
		se(option==5){
			se(posicao[1][1]=="O" ou posicao[1][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][1]="O"
			}
		}
		se(option==6){
			se(posicao[1][2]=="O" ou posicao[1][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[1][2]="O"
			}
		}
		se(option==7){
			se(posicao[2][0]=="O" ou posicao[2][0]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][0]="O"
			}
		}
		se(option==8){
			se(posicao[2][1]=="O" ou posicao[2][1]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][1]="O"
			}
		}
		se(option==9){
			se(posicao[2][2]=="O" ou posicao[2][2]=="X"){
				escreva("Posição já ocupada, bobão. Perdeu a vez pra deixar de ser Otário")
			}
			senao{
			posicao[2][2]="O"
			}
		}
	}
	funcao j1(cadeia posicao[][], inteiro vez){
		escreva("\nJOGADOR ", vez, ":\nSelecione um espaço para jogar:\n\n")
		escreva("  ", posicao[0][0], "  |  ", posicao[0][1], "  |  ", posicao[0][2])
		escreva("\n--", "---|--", "---|----")
		escreva("\n  ", posicao[1][0], "  |  ", posicao[1][1], "  |  ", posicao[1][2])
		escreva("\n--", "---|--", "---|----")
		escreva("\n  ", posicao[2][0], "  |  ", posicao[2][1], "  |  ", posicao[2][2], "\n")
		
	}
	funcao resul(cadeia posicao[][]){
		
		escreva("  ", posicao[0][0], "  |  ", posicao[0][1], "  |  ", posicao[0][2])
		escreva("\n--", "---|--", "---|----")
		escreva("\n  ", posicao[1][0], "  |  ", posicao[1][1], "  |  ", posicao[1][2])
		escreva("\n--", "---|--", "---|----")
		escreva("\n  ", posicao[2][0], "  |  ", posicao[2][1], "  |  ", posicao[2][2], "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6907; 
 * @DOBRAMENTO-CODIGO = [85, 137, 213, 296];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */