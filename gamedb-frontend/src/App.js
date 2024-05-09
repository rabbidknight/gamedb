import './App.css';
import Home from './pages/Home';
import {BrowserRouter as Router, Routes, Route } from "react-router-dom";
import AddUser from './pages/AddUser';

export default function App() {
  return (
    <Router>
      <Routes>
        <Route exact path='/' element={<Home/>}/>
        <Route exact path='/register' element={<AddUser/>}/>
      </Routes>
    </Router>
  );
}

