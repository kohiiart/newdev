let toDoList = [];

const loadTasks = () =>{
    const todayTasks = localStorage.getItem('tasks');
    return todayTasks ? JSON.parse(todayTasks) : [];
}

const completeTask = (element) =>{
    const findIndex = +element.getAttribute('index');
    const check = document.getElementById(`checkbox-${findIndex}`)
    
    console.log('check completo-------->>>', check)
    if (check.checked == true){
        const completed = document.getElementById(`newTask-${findIndex}`)
        let doneTask = loadTasks();
        completed.setAttribute('style', 'text-decoration: line-through solid green 2px;color: green;')

        
    } else {
        const completed = document.getElementById(`newTask-${findIndex}`)
        completed.removeAttribute('style', 'text-decoration: line-through solid green 2px;')
    }
}

const clickToRemoveTask = (element) => {
    const findIndex = +element.getAttribute('index');

    const removeTask = loadTasks();
    removeTask.splice(findIndex, 1)
  
    localStorage.setItem('tasks', JSON.stringify(removeTask));
    
    const tasks = listTasks();

    console.log('teste task-----', tasks)
  }

const span = (index) => {
    const span = document.createElement('span');
    
    const remove = document.createElement('i');
    remove.setAttribute('class', 'fas fa-trash');
    remove.setAttribute('index', `${index}`);
    remove.setAttribute('onclick', `clickToRemoveTask(this)`);
    remove.setAttribute('style', 'cursor:pointer; margin-inline: 1.5rem;');
  
    span.appendChild(remove);
    
    return span;
  } 



const listTasks = () => {
    const tasks = loadTasks();
    const section = document.getElementById('tasks-list')

    let divTasks = document.getElementById('tasks-div')
    if (divTasks){
        divTasks.remove();
    }
    divTasks = document.createElement('div');
    divTasks.setAttribute('id', 'tasks-div');

    tasks.forEach((item, index) => {
        const input = document.createElement('input');
        input.setAttribute('type', 'checkbox');
        input.setAttribute('index', `${index}`);
        input.setAttribute('id', `checkbox-${index}`);
        input.setAttribute('onclick', 'completeTask(this)');
        
        
        const label = document.createElement('label');
        label.setAttribute('for', `${index}`);
        label.setAttribute('id', `newTask-${index}`)
        label.innerHTML = `${item}`;

        const lineBreak = document.createElement('br')

        console.log('cindex----------->', `${index}`);
        
        console.log('indice----------->', input.getAttribute('index'));
        
        divTasks.appendChild(label);
        divTasks.appendChild(input);
        divTasks.appendChild(span(index))
        divTasks.appendChild(lineBreak)

    });

    section.appendChild(divTasks)
}
listTasks();

const addTask = (event) => {
    event.preventDefault();
    const task = document.getElementById('insert-task').value;
    
    const taskLoader = loadTasks();
    taskLoader.push(task);

    localStorage.setItem('tasks', JSON.stringify(taskLoader));

    const todayTasks = loadTasks();
    console.log('add task------>', todayTasks);
    document.querySelector('form').reset();

    listTasks();
}

const taskBtn = document.getElementById('submit-task')
taskBtn.addEventListener('click', addTask)