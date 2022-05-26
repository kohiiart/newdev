const submit =
    document.getElementById('submit');

const messages = [];

function addMessage(event) {
    event.preventDefault();                                         //DESABILITA O EVENTO PADRÃO DO ELEMENTO
    const inputNameValue = document.getElementById("nome").value;   //Pega o valor do ID
    const inputEmailValue = document.getElementById("email").value;
    const inputTelValue = document.getElementById("telefone").value;
    
    const message = {                                               //DENTRO DA FUNÇÃO
        name: inputNameValue, 
        email: inputEmailValue,
        telefone: inputTelValue
    }
    console.log('mensagem .......', message)
    messages.push(message);

    document.getElementById('dados').reset();
};


submit.addEventListener('click', addMessage);

