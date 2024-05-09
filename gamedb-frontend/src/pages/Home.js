import React from 'react';
import './Home.css';
import Navbar from '../components/Navbar';
import { Link } from 'react-router-dom';

export default function Home() {
  return (
  <>
    <Navbar/>
    <div className = "ButtonDiv">
      <Link to="/register"><button  className = "SignInButton">
        Sign In
      </button></Link>
      </div>

      
       

      

    </>
  )
}

