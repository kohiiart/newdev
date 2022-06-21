const storage = localStorage;

let cars = [];

let moviments = [];

let findingTotal = null;

const generateTotal = (element) =>{
    const findedTotal = element.getAttribute('car-code');

    findingTotal += findedTotal;

    const values = loadMoviment();
    console.log('carregando movimento ', values)
}

const onClickRemove = (element) => {
   
    
    const identificadorASerEncontrado = 
      +element.getAttribute('identificador');
    
    const carsDelete = loadCars();
    carsDelete.splice(identificadorASerEncontrado,1)
  
    localStorage.setItem('carRegistration', JSON.stringify(carsDelete)); 
 
    listCars();
  }

function loadCars () {
    const cars = storage.getItem('carRegistration');
    return cars ? JSON.parse(cars) : [];
}

function loadMoviment () {
    const moviments = storage.getItem('movimentRegistration');
    return moviments ? JSON.parse(moviments) : [];
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
    
    
    
       let ul = document.getElementById('list-cars-ul');
       if (ul) {
        ul.remove()
    }   
    ul = document.createElement('ul')
    ul.setAttribute('id', `list-cars-ul`);
    
    
    cars.forEach((item, identificador) => {
        const li = document.createElement('li');
        li.innerHTML = `Código: ${identificador} || ${item.model} ${item.brand} ` ;
        
        li.appendChild(span(identificador))
        li.setAttribute('car-code', `${identificador}`)
        console.log('testndo-----', li.getAttribute('car-code'))
        
        if(ul){
            ul.appendChild(li)
        }
    }); 
    
    const listCarSection = document.getElementById('list-cars-section');
    if (listCarSection) {
        document.getElementById('list-cars-section').appendChild(ul)
    }
}


listCars();
// Cadastro

function registryCar(event, identificador) {
    event.preventDefault();
    console.log('registrando um veiculo')

    const [model, brand] = document.getElementById('register-field').querySelectorAll('input');

    const car = {
        model: model.value,
        brand: brand.value
    }

    cars = loadCars();

    cars.push(car)

    storage.setItem('carRegistration', JSON.stringify(cars))


    console.log('----- ', car)
    listCars();
    document.querySelector('form').reset()
}


//-------------MOVIMENTO--------------------------------------------------------------------------------

const listMoviment = () => {
    const moviments = loadMoviment();
    
    
    
       let ul = document.getElementById('moviment-ul');
       if (ul) {
        ul.remove()
    }   
    ul = document.createElement('ul')
    ul.setAttribute('id', `moviment-ul`);
    
    
    moviments.forEach((item, identificador) => {
        const li = document.createElement('li');

      
        li.innerHTML = `Código: ${item.code} || ${item.enter} ${item.out} ${item.total}` ;
        
        li.setAttribute('moviment-code', `${identificador}`)
        console.log('testndo-----', li.id)
        
        if(ul){
            ul.appendChild(li)
        }
    }); 
    
    const movimentSection = document.getElementById('moviment-section');
    if (movimentSection) {
        document.getElementById('moviment-section').appendChild(ul)
    }
}


listMoviment();

function movimentRegistry(event) {
    event.preventDefault();
    
    let enterCar = 0;
    let outCar = 0;
    const [code, enter, out] = document.getElementById('moviment-field').querySelectorAll('input');

    const moviment = {
        code: +code.value,
        enter: enterCar+=+enter.value,
        out: outCar+=+out.value       
    }
    
    
    const cars = loadCars ()

    

    moviments = loadMoviment();

    moviments.push(moviment)

    storage.setItem('movimentRegistration', JSON.stringify(moviments))


    console.log('----- ', moviment)
    listMoviment();
    document.getElementById('in-out-form').querySelector('form').reset()
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

const btnMoviment = document.getElementById('submit-in-out');

if (btnMoviment) {
    btnMoviment.addEventListener('click', movimentRegistry);
}

