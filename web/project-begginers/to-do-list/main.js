let toDoList = [];

const loadTasks = () =>{
    const todayTasks = localStorage.getItem('tasks');
    return todayTasks ? JSON.parse(todayTasks) : [];
}

const listTasks = () => {
    const tasks = loadTasks();
    const section = document.getElementById('tasks-list')

    let divTasks = document.getElementById('tasks-div')
    if (divTasks){
        divTasks.remove();
    }
    divTasks = document.createElement('div')
    divTasks.setAttribute('id', 'tasks-div')

    tasks.forEach((item, index) => {
        let input = document.createElement('input')
        input.setAttribute('type', 'checkbox')
        input.setAttribute('index', `${index}`)
        let label = document.createElement('label')
        label.setAttribute('for', `${index}`)
        label.innerHTML = `${item}`

        console.log('label----------->', label.getAttribute('index'))
        divTasks.appendChild(label)

        console.log('indice----------->', input.getAttribute('index'))
        divTasks.appendChild(input)
    });

    section.appendChild(divTasks)
}

const addTask = (event) => {
    event.preventDefault();
    const task = document.getElementById('insert-task').value;
    
    toDoList.push(task);
    localStorage.setItem('tasks', JSON.stringify(toDoList));

    const todayTasks = loadTasks();
    console.log('add task------>', todayTasks);
    document.querySelector('form').reset();

    listTasks();
}

const taskBtn = document.getElementById('submit-task')
taskBtn.addEventListener('click', addTask)