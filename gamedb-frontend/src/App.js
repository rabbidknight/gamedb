import './App.css';
import Home from './pages/Home';
import {BrowserRouter as Router, Routes, Route } from "react-router-dom";
import SignUp from './pages/SignUp';
import Login from "./pages/Login"
import { useState } from 'react';

export default function App() {
  
  return (
    <Router>
      <Routes>
        <Route exact path='/' element={<Home/>}/>
        <Route exact path='/SignUp' element={<SignUp/>}/>
        <Route exact path='/Login' element={<Login/>}/>
      </Routes>
    </Router>
  );
}

