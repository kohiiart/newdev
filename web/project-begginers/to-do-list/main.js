let toDoList = [];

const loadTasks = () =>{
    const todayTasks = localStorage.getItem('tasks');
    return todayTasks ? JSON.parse(todayTasks) : [];
}

const addTask = (event) => {
    event.preventDefault();
    const task = document.getElementById('insert-task').value;
    
    toDoList.push(task);
    localStorage.setItem('tasks', JSON.stringify(toDoList));

    const todayTasks = loadTasks();
    console.log('add task------>', todayTasks);
    document.querySelector('form').reset();
}

const taskBtn = document.getElementById('submit-task')
taskBtn.addEventListener('click', addTask)