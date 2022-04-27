programa
{
	
	funcao inicio()
	{
		escreva(num(3, 5), "\n")//Função com Retorno do tipo "real"
		escreva(numreal(2.5, 7.89), "\n")//Função com Retorno do tipo "Real"
		escreva(txt("Fernando ", "Santos\n"))//Função com Retorno do tipo "Cadeia"
		preguica() //Função sem retorno ou vazia preguica()
	}
//------------------------------------------------------------------

//Função com Retorno do tipo "inteiro", onde ela receberá os parâmetros informados na linha 6 e retornará o prdouto deles
	
	funcao inteiro num(inteiro numero, inteiro numero2){
		retorne numero * numero2
	}
//------------------------------------------------------------------

//Função com Retorno do tipo "Real", onde ela receberá os parâmetros informados na linha 7 e retornará a soma deles
	
	funcao real numreal(real numeroreal, real numeroreal2){
		retorne numeroreal + numeroreal2
	}
//------------------------------------------------------------------

////Função com Retorno do tipo "Cadeia", onde ela receberá os parâmetros informados na linha 6 e retornará a concatenação deles
	funcao cadeia txt(cadeia texto, cadeia texto2){
		retorne texto + texto2
	}
//------------------------------------------------------------------

//Esta função, é uma função vazia (não retorna algum valor), apenas é uma forma de "abreviar" um código. 
//Nesse caso, substitui o comando preguica() por escreva("Digite um valor: ")

	funcao preguica(){
		escreva("Digite um valor: ")
	}
//------------------------------------------------------------------
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */