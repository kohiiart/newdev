const storage = localStorage;

let cars = [];


function loadCars () {
    const cars = storage.getItem('carRegistration');
    return cars ? JSON.parse(cars) : [];
}

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
}


const btnRegistry = document.getElementById('submit-register');

if (btnRegistry) {
    btnRegistry.addEventListener('click', registryCar);
}