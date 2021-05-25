import React, { useState } from "react";

function Todo({ todo, toggleTodo }) {
  function handleTodoClick() {
    toggleTodo(todo.id);
  }
  return (
    <div>
      <label className="grid grid-cols-2 bg-blue-900 py-8 m-2 hover:bg-blue-500">
        <div className="m-auto">{todo.name}</div>
        <input
          type="checkbox"
          checked={todo.complete}
          onChange={handleTodoClick}
        />
      </label>
    </div>
  );
}

export default Todo;
