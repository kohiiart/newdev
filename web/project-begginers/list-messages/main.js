const buttonAddMessage = document.getElementById('add-button');

function addMessage (event){
    event.preventDefault();

    const inputFrom = document.getElementById('from');
    const inputTo = document.getElementById('to');
    const textArea = document.getElementById('message')

if (!inputFrom.value.length){
    alert('O remetente deve ser informado!');
    return
};

if (!inputTo.value.length){
    alert('O destinatário deve ser informado!');
    return
};

//O .trim remove os espaços em branco do início e final da string
if (!textArea.value.length){
    alert('A mensagem deve conter um conteúdo!');
    return  
};

    const message = {
        from: inputFrom.value,
        to: inputTo.value,
        message: textArea.value
    };

    console.log('-------oooo', message);

    const sessionMessages = document.getElementById('section-messages');

    let ul = sessionMessages.querySelector('ul');        //Uma Lista Não Ordenada(ul) é criada se a validação de sua existência for falsa
    if (!ul) {
        ul = document.createElement('ul');
        sessionMessages.appendChild(ul);
    }
    
    document.getElementById('form-message').reset();
    
    const li = document.createElement('li');
    li.innerHTML = `De: ${message.from} Para: ${message.to} Mensagem: ${message.message}`;                  //Crase

    ul.appendChild(li);
};

buttonAddMessage.addEventListener('click', addMessage);