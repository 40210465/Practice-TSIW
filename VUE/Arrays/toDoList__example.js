const TASKS = [
	{
		name: 'ZZZ',
		description: 'Description 1',
		category: 'Category 1',
	},
	{
		name: 'AAA',
		description: 'Description 2',
		category: 'Category 5',
	},
];
let ORDER_BY = 'asc';

function performTask(taskName) {
	const taskIndex = TASKS.findIndex((task) => task.name == taskName);
	TASKS.splice(taskIndex, 1);
	mountTasks(TASKS);
}

function mountTasks(tasks) {
	let final = '';
	for (let task of tasks) {
		final += `<div class="col-4 my-2">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">${task.name}</h5>
                <p class="card-text">${task.description}</p>
                <p class="card-text">${task.category}</p>
                <button onclick="performTask('${task.name}')" class="btn btn-success">Perform Task</button>
            </div>
        </div>
    </div>`;
	}
	document.getElementById('rowCard').innerHTML = final;
}

mountTasks(TASKS);

function addTask(e) {
	e.preventDefault();
	let task = {
		name: addTaskName.value,
		description: addTaskDescription.value,
		category: addTaskCategory.value,
	};
	if (TASKS.some((_task) => _task.name == task.name)) return alert('Task already exists');
	TASKS.push(task);
	mountTasks(TASKS);
}

addForm.addEventListener('submit', addTask);

function orderTasks() {
	if (ORDER_BY == 'asc') {
		TASKS.sort((a, b) => a.name.localeCompare(b.name));
		ORDER_BY = 'desc';
	} else {
		TASKS.sort((a, b) => b.name.localeCompare(a.name));
		ORDER_BY = 'asc';
	}
	mountTasks(TASKS);
}

function filterTasks(e) {
	e.preventDefault();
	let filteredTasks = TASKS.filter(
		(task) =>
			task.name.trim().toLowerCase().includes(filterTaskName.value.trim().toLowerCase()) && (filterTaskCategory.value == 'All' || task.category == filterTaskCategory.value)
	);

	mountTasks(filteredTasks);
}
formFilter.addEventListener('submit', filterTasks);
