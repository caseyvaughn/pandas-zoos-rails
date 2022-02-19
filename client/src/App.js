import './App.css';
import { Route, Routes } from "react-router-dom"
import ZoosContainer from './containers/ZoosContainer';

function App() {
  return (
    <div className="App">
    <Routes>
      <Route path='/zoos/*' element={<ZoosContainer />} />
      <Route path='/pandas/*' element={<h2>Pandas</h2>} />
      <Route path='/' element={<h1>Welcome to the Panda Zoo!</h1>} />
    </Routes>
  </div>
  );
}

export default App;
