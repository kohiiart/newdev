const buttonAddMessage = document.getElementById('add-button');

let countRow = 0;

const onClickEdit = (idRecord) => {
    console.log('pei pei', idRecord);
}

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

    /*const sessionMessages = document.getElementById('section-messages');

    let ul = sessionMessages.querySelector('ul');        //Uma Lista Não Ordenada(ul) é criada se a validação de sua existência for falsa
    if (!ul) {
        ul = document.createElement('ul');
        sessionMessages.appendChild(ul);
    }
    
    const li = document.createElement('li');
    li.innerHTML = `De: ${message.from} Para: ${message.to} Mensagem: ${message.message}`;                  //Crase
    
    ul.appendChild(li);             */

    document.getElementById('form-message').reset();
    
    let tbody = document.getElementById('tbody');

    const tr = document.createElement("tr");

    const tdFrom = document.createElement("td");
    tdFrom.innerHTML = message.from;
    
    const tdTo = document.createElement("td");
    tdTo.innerHTML = message.to;
    
    const tdMessage = document.createElement("td");
    tdMessage.innerHTML = message.message;
    
    tr.appendChild(tdFrom);
    tr.appendChild(tdTo);
    tr.appendChild(tdMessage);
    
    const tdButtons = document.createElement('td');

    

    const iconEdit = document.createElement('i');
    iconEdit.setAttribute('class','fas fa-edit');
    tdButtons.appendChild(iconEdit);
    iconEdit.setAttribute('style', 'cursor:pointer');
    
    const iconRemove = document.createElement('i');
    iconRemove.setAttribute('class','fas fa-trash');
    tdButtons.appendChild(iconRemove);
    iconRemove.setAttribute('style', 'cursor:pointer');
    
    tr.appendChild(tdButtons);
    
    tr.setAttribute('id', countRow);
    countRow += 1;
    iconEdit.setAttribute('onclick', `onClickEdit(${tdButtons.parentElement.id});`)
    console.log('pegar elemento pai', tdButtons.parentElement.id);

    tbody.appendChild(tr);
};

buttonAddMessage.addEventListener('click', addMessage);