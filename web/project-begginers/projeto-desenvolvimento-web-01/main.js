let registers = [];
 
const loadRegisters = () => {
    const armazenedRegisters = localStorage.getItem('armazenamento');
    return armazenedRegisters ? JSON.parse(armazenedRegisters) : [];
  }

  const listRegisters = () => {
      const registers = loadRegisters()
      const tbody = document.getElementById('tbody');

      registers.forEach((armazenados, index) => {
          const tr = document.createElement('tr')

          if (index >= tbody.childNodes.length){
              const td1 = document.createElement('td');
              td1.innerHTML = `${armazenados.name}`;
              const td2 = document.createElement('td');
              td2.innerHTML = `${armazenados.lastName}`;
              const td3 = document.createElement('td');
              td3.innerHTML = `${armazenados.location}`;
              const td4 = document.createElement('td');
              td4.innerHTML = `${armazenados.complement}`;
              const td5 = document.createElement('td');
              td5.innerHTML = `${armazenados.number}`;
              const td6 = document.createElement('td');
              td6.innerHTML = `${armazenados.email}`;
              tr.appendChild(td1);
              tr.appendChild(td2);
              tr.appendChild(td3);
              tr.appendChild(td4);
              tr.appendChild(td5);
              tr.appendChild(td6);
  
              document.getElementById('tbody').appendChild(tr)
          } 
      }); 
  }

listRegisters();

const addRegister = (event) => {
    event.preventDefault();

    const register = {
        name: document.getElementById('name').value,
        lastName: document.getElementById('lastName').value,
        location: document.getElementById('location').value,
        complement: document.getElementById('complement').value,
        number: document.getElementById('tel').value,
        email: document.getElementById('email').value
    };
      

    registers = loadRegisters();
    registers.push(register);
    localStorage.setItem('armazenamento', JSON.stringify(registers));
    document.querySelector('form').reset();
    listRegisters();
}

const addButton = document.getElementById('submitButton');
addButton.addEventListener('click', addRegister)