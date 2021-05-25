import React, { useState, useRef, useEffect } from "react";
import TodoList from "./TodoList";
import uuidv4 from "uuid/v4";

const LOCAL_STORAGE_KEY = "todoApp.todos";

function App() {
  const [todos, setTodos] = useState([]); //useState returns the state variable and the function to change the state
  const todoNameRef = useRef();

  useEffect(() => {
    const storedTodos = JSON.parse(localStorage.getItem(LOCAL_STORAGE_KEY));
    if (storedTodos) setTodos(storedTodos);
  }, []); //runs once but never again because empty array doesnt change

  useEffect(() => {
    localStorage.setItem(LOCAL_STORAGE_KEY, JSON.stringify(todos));
  }, [todos]); //called when items in the list change

  function toggleTodo(id) {
    const newTodos = [...todos]; //always copy before modifing a state variable
    const todo = newTodos.find((todo) => todo.id === id);
    todo.complete = !todo.complete;
    setTodos(newTodos);
  }

  function handleAddTodo(e) {
    const name = todoNameRef.current.value; //used useRef to get the value from the button
    if (name === "") return;
    setTodos((prevTodos) => {
      //prevTodos is the previous value of Todos and can be used to change the state variable
      return [...prevTodos, { id: uuidv4(), name: name, complete: false }];
    });

    todoNameRef.current.value = null;
  }

  function handleClearTodos() {
    const newTodos = todos.filter((todo) => !todo.complete);
    setTodos(newTodos);
  }

  return (
    <div className="container mx-auto bg-blue-200">
      <div className="bg-green-900 grid grid-cols-5 place-items-stretch">
        <TodoList todos={todos} toggleTodo={toggleTodo} />
      </div>
      <input ref={todoNameRef} type="text" />
      <button
        className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
        onClick={handleAddTodo}
      >
        Add Todo
      </button>
      <button
        className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
        onClick={handleClearTodos}
      >
        Clear Completed Todos
      </button>
      <div> {todos.filter((todo) => !todo.complete).length} left to do</div>
    </div>
  );
}

export default App;
