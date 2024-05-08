import React, { useEffect, useState } from 'react';
import axios from "axios";
import './Home.css';
import Navbar from '../components/Navbar';
import { Link } from 'react-router-dom';

export default function Home() {

  const [SignIn, setSignIn] = useState(0);

  return (
  <>
    <Navbar/>

    <div className = "SignInButtonDiv">
      <Link to="/register"><button onClick={() => setSignIn(1)} className = "SignInButton">
        Sign In 2
      </button></Link>
      </div>

      { SignIn ? 
      (<>
      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label class="form__label">UserName</label>
      </div>

      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label class="form__label">Password</label>
      </div>
      </>)
      
      :(
      <>
      </>
      )
      }  

      

    </>
  )
}

