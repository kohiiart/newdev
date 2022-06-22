/*
front end:
HTML, CSS, JS

HTML = Linguagem de marcação
CSS = Linguagem de estilização
JavaScript = Linguagem de programação

HTML e CSS = dão vida e corpo para a pagina web;
JavaScript = Da funcionalidade à página web por meio de interações (aos inputs, botões e etc.)

Existem servidores provendo recursos, podendo ser tanto no front quanto back-end: imagem, HTML, arquivos, 
arquivos de texto

A comunicação é feita através do protocolo HTTP (HTTPS)
HTTPS: possui um nivel de segurança q é utilizando certificados SSL, que criptografam as informações durante
a transferencia

USSL: certbot(cria certificado e linka ele com a url) - let's encrypt

JS - linguagem de programação

POO - Programação orientada a objetos

Classe:
    -> propiedades/atributos
    -> métodos

    declarar classe:
    {
        function Carro (modelo, ano){
            return{
                modelo,ano
            }
        }

        const carro1 = Carro('mercedes', 2016);
        const carro2 = Carro('porsche', 1991
        
        const Carro = () => {

        }

        FUNCTION E ARROW FUNCTION = Arrow function pega valor fora dela(do escopo anterior), 
                                    function precisa definir dentro dela
    }
Objeto: Instância de uma classe

{
    EXEMPLOS:

    Classe: frutas

    const fruta1{
        nome:'banana';
        tamanho:'11cm ';
        cor:'amarelo'
    };

    MÉTODOS/FUNÇÕES

    function estaMaduro (tempoDeVida) {
        if (tempoDeVida >= 2){
            return true;
        }
        return false;
    };
    
    estaMaduro();
}

ARRAY
{
    -> .forEach: percorre cada elemento do array, disparando uma função. 
        E recebe 2 parâmetros: elemento no primeiro e index no segundo;

    -> .push: adiciona a função na última posição do array;

    -> .indexOf: procura e retorna o indice do elemento;

    -> .splice: remove um ou mais itens de um array de acordo com os parâmetros dados.
        1º é a posição inicial para remover e o 2º é quantos itens serão removidos;

    -> .filter: procura e retorna o elemento que satisfaz a condição passada a ele;

    -> .map: retorna um novo array a partir do anterior;

    -> .includes: retorna true ou false se o elemento possui a condição passada;
}

MANIPULAÇÃO DA DOM
{
    DOM= Document Object Model (página);

    ->adicionar eventos dentro da DOM, através de inputs e botões de elementos
        .addEventListener('click', função de callback)

    ->procurar elementos na DOM:
        .getElementById() = procura elemento pelo ID;
        .querySelector() = Procura e retorna o primeiro elemento encontrado pelo seletor (tagName, class, id);
        .querySelectorAll() = procura e retorna todos os elementos encontrados pelo seletor;

    ->criar elementos HTML de forma DINÂMICA  
        .createElement() = cria elemento;
        .appendChild() = cria um elemento filho dentro de um elemento pai;    
}

back-end
*/