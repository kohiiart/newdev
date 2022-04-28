programa
{
	
	funcao inicio(){
		cadeia nome[3], rua[3]
		inteiro tel[3], num[3]

		para(inteiro i=0; i < 3; i++){
						
			escreva("Nome do Cliente: ")
			leia(nome[i])

			escreva("Endereço do Cliente(Rua): ")
			leia(rua[i])

			escreva("Endereço do Cliente(Número): ")
			leia(num[i])
			
			escreva("Telefone do Cliente: ")
			leia(tel[i])
			limpa()
		}

		escreva("Cliente:   ", nome[0], " || ", nome[1], " || ", nome[2])
		escreva("\nRua:      ", rua[0], " || ", rua[1], " || ", rua[2])
		escreva("\nNúmero:   ", num[0], " || ", num[1], " || ", num[2])
		escreva("\nTelefone: ", tel[0], " || ", tel[1], " || ", tel[2])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 5, 9, 4}-{rua, 5, 18, 3}-{tel, 6, 10, 3}-{num, 6, 18, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */