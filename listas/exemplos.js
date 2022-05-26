// Java Script: Linguagem de programação;
// POO programação orientada a objetos;
// Atributos e métodos(funções);
//OBJETOS = instância de alguma coisa;

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
    cor: 'vermelho',      //Atributos e Métodos se separam com VÍRGULA;
    andar: function () {
        console.log('andando')
    }
};    

console.log('----->', carro);

const NUMERO = 2;       //Por convenção, é possível declarar constantes de ESCOPO GLOBAL em Upper Case;

//  4º Arrow Functions

const multiplicaValores = () => {
    console.log('multiplicaValores', multiplicaValores);   
}

multiplicaValores ();


//----------------------------------------------------------------------------------------------------------
//BUSCANDO ELEMENTOS DENTRO DE UMA PÁGINA HTML

//getElementoById seleciona o elemento pelo ID
const submit = document.getElementById('submit');
//BUSCANDO PELA TAG 'input'

//BUSCANDO PELO 'id'
const endereco = document.querySelectorAll('#endereco');

//querySelector retorna o PRIMEIRO elemento que ele encontrar
const input = document.querySelector('input');

//querySelectorAll retorna o ARRAY do elemento que ele encontrar
const inputs = document.querySelectorAll('input');

console.log('enviar ---->', submit);
console.log(input);
console.log(inputs);

//Pegando elemento pelo ÍNDICE
console.log('email......', inputs[1]);

console.log(endereco);

const social = document.querySelector('.social');
console.log ('social .........', social);





// É possível manipular HTML e CSS pelo JavaScript:
const p = document.createElement('p');
p.innerHTML = 'teste JS';
console.log (p);

document.getElementById('endereco').appendChild(p);

//Classe Carro
function Carro (cor, marca, modelo, ano) {              //Classe identifica com letra maiúscula no início
    return{
        cor,
        marca,
        modelo,
        ano
    }
}

//Objeto é uma instãncia de uma classe (conjunto de métodos e atributos)
//Instâncias(objetos) carro1, carro2, etc.
const carro1 = ('vermelho', 'volks', 'gol', 2010)
const carro2 = ('preto', 'volks', 'fusca', 2002)
const carro3 = ('rosa', 'volks', 'bola', 2011)
const carro4 = ('roxo', 'volks', 'quadrado', 2014)

console.log('carro', carro1, carro2, carro3, carro4)

