programa
{
	
	funcao inicio()
	{
//---------------------------------------------------------------------------------------
		inteiro 
			contador,
			filhos,
			SomaF=0,
			mediaF
		real 
			salario,
			S=0,
			SA=0,
			media
//----------------------------------------------------------------------------------------
		para(contador = 1; contador <= 3; contador++){
			escreva("Digite seu Salário: ")
			leia(salario)
			S += salario

			se(salario>SA){
				SA=salario
			}

			escreva("Informe quantos filhos você tem: ")
			leia(filhos)
			SomaF += filhos
		}
//----------------------------------------------------------------------------------------
		
		media = S / 3
		escreva("\nA média do Salário da população é: ", media)
		
		mediaF = SomaF / 3
		escreva("\nA média de Filhos da população é: ", mediaF)

		escreva("\nO maior salário é: ", SA)
		
//----------------------------------------------------------------------------------------
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */