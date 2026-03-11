// src/App.js
import { useState } from 'react';
import './App.css';

function App() {
  const [todos, setTodos] = useState([]);
  const [input, setInput] = useState('');

  const addTodo = () => {
    if (input.trim() === '') return;
    setTodos([...todos, { text: input, done: false }]);
    setInput('');
  };

  const toggleDone = (index) => {
    const newTodos = [...todos];
    newTodos[index].done = !newTodos[index].done;
    setTodos(newTodos);
  };

  return (
    <div className="App">
      <h1>Todo List Nhẹ Nhàng</h1>
      
      <div style={{ margin: '20px 0' }}>
        <input
          type="text"
          value={input}
          onChange={(e) => setInput(e.target.value)}
          placeholder="Nhập việc cần làm..."
          onKeyDown={(e) => e.key === 'Enter' && addTodo()}
          style={{ padding: '10px', width: '280px', fontSize: '16px' }}
        />
        <button onClick={addTodo} style={{ padding: '10px 20px', marginLeft: '10px' }}>
          Thêm
        </button>
      </div>

      <ul style={{ listStyle: 'none', padding: 0 }}>
        {todos.map((todo, index) => (
          <li
            key={index}
            onClick={() => toggleDone(index)}
            style={{
              textDecoration: todo.done ? 'line-through' : 'none',
              color: todo.done ? '#95a5a6' : '#2c3e50',
              cursor: 'pointer',
              padding: '8px',
              background: index % 2 === 0 ? '#f8f9fa' : 'white',
              margin: '4px 0',
              borderRadius: '4px',
              maxWidth: '400px',
              marginLeft: 'auto',
              marginRight: 'auto'
            }}
          >
            {todo.text}
          </li>
        ))}
      </ul>

      {todos.length === 0 && <p style={{ color: '#7f8c8d' }}>Chưa có việc gì cả... 😄</p>}
    </div>
  );
}

export default App;
