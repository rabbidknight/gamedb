import './App.css';
import Home from './pages/Home';
import {BrowserRouter as Router, Routes, Route } from "react-router-dom";
import SignUpPage from './pages/SignUpPage';
import LoginPage from "./pages/LoginPage";
import ListPage from "./pages/ListPage";
import GamePage from './pages/GamePage';

export default function App() {
  
  return (
    <Router>
      <Routes>
      <Route path="/" element={<Home />} />
        <Route path="/sign-up" element={<SignUpPage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/list" element={<ListPage />} />
        <Route path="/game/:name" element={<GamePage />} />
        {/* Wildcard route to catch any undefined routes and redirect to home */}
        <Route path="*" element={<Home />} />
      </Routes>
    </Router>
  );
}

