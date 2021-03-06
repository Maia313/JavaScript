var todoList = {
	todos: [],

	
	addTodos: function(todoText) {
		
		this.todos.push({
			todoText: todoText;
			completed: false;			
		});
		
	},
	
	changeTodos: function(position, todoText) {
		
		this.todos[position].todoText = todoText;
		
	},
	
	deleteTodos: function(position) {
		
		this.todos.splice(position,1);
		
	},
	
	toggleCompleted function(position) {
		
		var todo = this.todos[position];
		todo.completed = !todo.completed;
		
	}, 
	
	toggleAll function() {
		
		var totalTodos = this.todos.length;
		var completedTodos = 0;
		
		//Get numbre of completed todos
		for (var i = 0; i < totalTodos; i++) {
			if (this.todos[i].completed === true) {
				completedTodos++;
			}
		}
		
		if(completedTodos === totalTodos) {
			for (var i=0; i < totalTodos; i++ ) {
				this.todos[i].completed = false;
			}
		} else {
			for (var i=0; i < totalTodos; i++ ) {
				this.todos[i].completed = true;
			}
		}
		
		
	}
	
	
};


/*var displayTodosButton = document.getElementById("displayTodosButton");
var toggleAllButton = document.getElementById("toggleAllButton");

displayTodosButton.addEventListener("click", function () {todoList.displayTodos();});
toggleAllButton.addEventListener("click", function() {todoList.toggleAll();});
*/

//(refactoring) refactory code, without addEventlistener() method, html code without id, with onclick instead
var handlers = {
	
	addTodo: function() {
		var addTodoTextInput = document.getElementById("addTodoTextInput");
		todoList.addTodo(addTodoTextInput.value);
		addTodoTextInput.value = "";
		view.displayTodos();
	},
	
	changeTodo: function() {
		var changeTodoPositionInput = document.getElementById("changeTodoPositionInput");
		var changeTodoTextInput = document.getElementById("changeTodoTextInput");
		todoList.changeTodo(changeTodoPositionInput.valueAsNumber, changeTodoTextInput.value);
		changeTodoPositionInput.value = "";
		changeTodoTextInput.value = "";
		view.displayTodos();
	},
	
	deleteTodo: function() {
		var deleteTodoPositionInput = document.getElementById("deleteTodoPositionInput");
		todoList.deleteTodo(deleteTodoPositionInput.valueAsNumber);
		deleteTodoPositionInput.value = "";
		view.displayTodos();
	},
	
	toggleCompleted: function() {
		var toggleCompletedPositionInput = document.getElementById("toggleCompletedPositionInput");
		todoList.toggleCompleted(toggleCompletedPositionInput.valueAsNumber);
		toggleCompletedPositionInput.value = "";
		view.displayTodos();
	},
	
	toggleAll: function() {
		todoList.toggleAll();
		view.displayTodos();
	}
	
};

var view = {
	displayTodos: function () {
		var todosUl = document.querySelector("ul");
		todosUI.innerHTML = "";
		for (var i=0; i< todoList.todos.length; i++) {
			var todoLi = document.createElement("");
			var todo = todoList.todos[i];
			
			var todoTextWithCompletion = "";
			if (todo.completed === true) {
				todoTextWithCompletion = "(x)" + todo.todoText;
			} else {
				todoTextWithCompletion = "( )" + todo.todoText;
			}
			
			todoLi.textContent = todoTextWithCompletion;
			todosUl.appenChild(todoLi);
		}
	}
};