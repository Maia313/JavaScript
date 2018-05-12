var todos = ["item 1", "item 2", "item 3"];


//it should have a function to display todos

function displayTodos() {
	
	console.log("My todos: ", todos); //logs out "text-my todos", and data from the array
}


//it should have a function to add todos

function addTodo(todo) {
	
	todos.push(todo); // adds new todo which is the parameter 
	displayTodos();  // displays the newTodos, with the added item
}

//it should have a function to change todos

function changeTodo(position, newValue) {
	
	todos[position] = newValue;
	displayTodos();
}

//it should have a function to delete todos

function deleteTodos() {
	
	todos.splice(position, 1); // deletes the specified todo
	displayTodos();  // displays the new array, without the deleted todo
}