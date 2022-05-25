// Java Script: Linguagem de programação;
// POO programação orientada a objetos;
// Atributos e métodos(funções);


//Ex de Atributos: Cor, altura, largura, altura, etc.
//Ex de Métodos(funções): Acelerar, freiar, Pular, andar, etc.


//                                  DECLARAÇÃO DE VARIÁVEIS

let nomeVariavel = 1       //Convenção => Com ou sem  ;  não altera;
//let => Declarar varíavel;


//  A convenção de declaração de Variável deve ser seguida;
//  NÃO PODE iniciar com números;
//  NÃO PODE iniciar com caracteres especiais;
//  NÃO PODE iniciar com Upper Case;
//  NÃO PODE possuir acentos;
//  DEVEM possuir um valor semântico (NÃO PODE: n1, n2, a, b, c, banana, goiaba, etc.);


//                                  DECLARAÇÃO DE FUNÇÕES

// Mesmas convenções das Variáveis;
// Valor semântico;

// 1º Método de criar uma função - atribuí-la à uma variável:

let somaValores = function () {
    console.log("Somando valores");
}

//Chamar a função:

somaValores();

//  2º Método - Named Function:

function subtraiValores() {
    console.log("Subtraindo valores");
}

subtraiValores();

//3º Método - Variável constante:

const carro = {    //Se tentar mudar o valor da erro;
    cor: vermelho,      //Atributos e Métodos se separam com VÍRGULA;
    andar: function () {
        console.log('andando')
    }
};    

const NUMERO = 2;       //Por convenção, é possível declarar constantes de ESCOPO GLOBAL em Upper Case;