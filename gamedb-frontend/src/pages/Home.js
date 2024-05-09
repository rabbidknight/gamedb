import React from 'react';
import './Home.css';
import { Link } from 'react-router-dom';
import backgroundImg from "../background.jpg"


export default function Home() {
  return (
    <>
    <div  className = "Navbar">
      <Link className = "Title" to="/">GameDB</Link>
      <Link to="/register"><button className = "SignInButton">
      Sign In
      </button></Link>
    </div>
    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>
    
    <div className='Main'>
      
    </div>

    </>
  )
}

