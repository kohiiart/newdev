const submit =
    document.getElementById('submit');

const messages = [];

function addMessage(event) {
    event.preventDefault();                                         //DESABILITA O EVENTO PADRÃO DO ELEMENTO
    const inputNameValue = document.getElementById("nome").value;   //Pega o valor do ID
    const inputEmailValue = document.getElementById("email").value;
    const inputTelValue = document.getElementById("telefone").value;
    
    const message = {                              //DENTRO DA FUNÇÃO
        name: inputNameValue, 
        email: inputEmailValue,
        telefone: inputTelValue
    }
    console.log('mensagem .......', message)
    
    if(messages.length <3){
    messages.push(message);                     //método .push adiciona os dados do elemento selecionado e adiciona ao último índice do vetor
    }else{
        alert('O vetor está cheio!')            //chama o ALERT do browser
    }
    document.getElementById('dados').reset();
};
 

submit.addEventListener('click', addMessage);

