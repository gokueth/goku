// src/App.js
import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div className="App">
      <h1>Xin chào React! 👋</h1>
      <h2>Bạn đã bấm {count} lần</h2>
      
      <button 
        onClick={() => setCount(count + 1)}
        style={{ 
          padding: '12px 24px', 
          fontSize: '18px', 
          margin: '10px' 
        }}
      >
        +1
      </button>

      <button 
        onClick={() => setCount(0)}
        style={{ 
          padding: '12px 24px', 
          fontSize: '18px', 
          backgroundColor: '#e74c3c' 
        }}
      >
        Reset
      </button>

      <p style={{ marginTop: '30px', color: '#7f8c8d' }}>
        Ngày hôm nay: {new Date().toLocaleDateString('vi-VN')}
      </p>
    </div>
  );
}

export default App;
