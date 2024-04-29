import './App.css';
import React, { useState } from 'react';


const  App = () => {
  const [SignIn, setSignIn] = useState(0);
  
  return (
    <>
      <Navbar/>

      <div className = "SignInButtonDiv">
      <button onClick={() => setSignIn(1)} className = "SignInButton">
        Sign In
      </button>
      </div>

      { SignIn ? 
      (<>
      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label for="name" class="form__label">UserName</label>
      </div>

      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label for="name" class="form__label">Password</label>
      </div>
      </>)
      
      :(
      <>
      </>
      )
      }  
    </>

  );
}
export default App;

const  Navbar = () => {
  return (
    <>
      <div  className = "Navbar">
        <p className = "Title">GameDB</p>
      </div>
      
    </>

  );
}
