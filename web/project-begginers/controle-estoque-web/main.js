const storage = localStorage;

let cars = [];

const onClickRemove = (element) => {
    const identificadorASerEncontrado = 
      +element.getAttribute('identificador');
  console.log ('uepa ', identificadorASerEncontrado);
    const carsDelete = loadCars();
     carsDelete.splice(identificadorASerEncontrado,1)
  
     localStorage.setItem('carRegistration', JSON.stringify(carsDelete));
  
    listCars();
  }

function loadCars () {
    const cars = storage.getItem('carRegistration');
    return cars ? JSON.parse(cars) : [];
}
//Listar

const span = (identificador) => {
    const span = document.createElement('span');
    const iconRemove = document.createElement('i');
    iconRemove.setAttribute('class', 'fas fa-trash');
    iconRemove.setAttribute('title', 'Remover');
    iconRemove.setAttribute('identificador', `${identificador}`);
    iconRemove.setAttribute('onclick', `onClickRemove(this)`);
    iconRemove.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;');
  
    span.appendChild(iconRemove);
    
    return span;
  } 

const listCars = () => {
    const cars = loadCars();

    let ul = document.querySelector('ul');
  if (ul) {
    ul.remove();
  }
  
  ul = document.createElement('ul');

    
    cars.forEach((item, identificador) => {
        const li = document.createElement('li');
        li.innerHTML = `${item.model} ${item.brand} ${item.quantity}`;

        li.appendChild(span(identificador))
        console.log('item ====', item.model, item.brand, item.quantity)
        if(ul){
        ul.appendChild(li)
        }
    }); 
    
}


listCars();
// Cadastro

function registryCar(event) {
    event.preventDefault();
    console.log('registrando um veiculo')

    const [model, brand, quantity] = document.getElementById('register-field').querySelectorAll('input');

    const car = {
        model: model.value,
        brand: brand.value,
        quantity: +quantity.value
    }

    cars = loadCars();

    cars.push(car)

    storage.setItem('carRegistration', JSON.stringify(cars))


    console.log('----- ', car)
    listCars();
    document.querySelector('form').reset()
}

function pageList(){
    window.location = 'list-cars.html'
}
function pageRegister(){
    window.location = 'register.html'
}
function pageInOut(){
    window.location = 'moviment.html'
}
const btnRegistry = document.getElementById('submit-register');

if (btnRegistry) {
    btnRegistry.addEventListener('click', registryCar);
}