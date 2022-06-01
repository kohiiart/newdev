const buttonAddMessage = document.getElementById('add-button');

let countRow = 0;
let lineEditInMoment = null;

const onClickEdit = (lineEdit) => {
    lineEditInMoment = lineEdit;
   /* lineEdit.childNodes.forEach((valor, index) => {
        console.log('valor: ', valor);
        console.log('index: ', index);
    });
  //  const tbody = document.getElementById('tbody');*/
   // const fromValue = lineEdit.childNodes[0].innerHTML;
   // const toValue = lineEdit.childNodes[1].innerHTML;
    //const messageValue = lineEdit.childNodes[2].innerHTML;

        //DESESTRUTURAÇÃO DE ARRAYS
    const [from, to, message] = lineEdit.childNodes;

    document.getElementById('from').value = from.innerHTML;
    document.getElementById('to').value = to.innerHTML;
    document.getElementById('message').value = message.innerHTML;

}

const onClickRemove = (lineRemove) => {
   lineRemove.remove()
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
    iconEdit.setAttribute('title', 'Editar');
    iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem');
    
    const iconRemove = document.createElement('i');
    iconRemove.setAttribute('class','fas fa-trash');
    tdButtons.appendChild(iconRemove);
    iconRemove.setAttribute('title', 'Remover');
    iconRemove.setAttribute('style', 'cursor:pointer; margin-inline: 1rem');

    const iconUp = document.createElement('i')
    iconUp.setAttribute('class', 'fas fa-circle-arrow-up')
    tdButtons.appendChild(iconUp);
    iconUp.setAttribute('title', 'Mover Acima');
    iconUp.setAttribute('style', 'cursor:pointer; margin-inline: 1rem');

    const iconDown = document.createElement('i')
    iconDown.setAttribute('class', 'fas fa-circle-arrow-down')
    tdButtons.appendChild(iconDown)
    iconDown.setAttribute('title', 'Mover Abaixo');
    iconDown.setAttribute('style', 'cursor:pointer; margin-inline: 1rem');

    tr.appendChild(tdButtons);
    
    tr.setAttribute('id', `line${countRow}`);
    countRow += 1;
    iconEdit.setAttribute('onclick', `onClickEdit(${tdButtons.parentElement.id});`)
    iconRemove.setAttribute('onclick',`onClickRemove(${tdButtons.parentElement.id})`)
    
    if(lineEditInMoment){
        console.log('essa linha ja existe')
        const [fromToUpdate, toToUpdate, messageToUpdate] = lineEditInMoment.childNodes;
        fromToUpdate.innerHTML = message.from; 
        toToUpdate.innerHTML = message.to; 
        messageToUpdate.innerHTML = message.message; 
        lineEditInMoment = null;
        
    }else{
    tbody.appendChild(tr);
    }
};

buttonAddMessage.addEventListener('click', addMessage);