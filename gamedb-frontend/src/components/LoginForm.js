import axios from 'axios'
import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import useToken from '../variables/Token'
import useUsername from '../variables/Username'

export default function InputForm() {

  const navigate = useNavigate();

  const { token, setToken } = useToken();

  const {username2, setUsername } = useUsername();

  const [user, setUser] = useState({
    username:"",
    password:"",
  })

  const{username, password} = user

  const onInputChange = (e)=> {
    setUser({...user,[e.target.name]:e.target.value})
  }

  const onLogin = async (e)=> {
   e.preventDefault();
   try {
    const result = await axios.post("http://localhost:8080/api/auth/authenticate",user);
    setToken(result.data.token);
    setUsername(username);
    setTimeout(function(){navigate("/");},50);
   } catch (error) {
    showErrorMessage();
   }
  }

  function showErrorMessage() {
    var errorMessage = document.getElementById('errorMessage');
    errorMessage.style.display = 'block';
    var form = document.getElementById('form');
    form.style.height = '300px';
}

  return (
    
    <form className = "form" onSubmit={(e)=>onLogin(e)}>
      <div>
        <div id='form' className='InnerFormDiv' style={{height: "280px"}}>
            <div style={{textAlign: "center", fontSize: "24px"}}>
            <span>Login</span>
            <br></br><span id="errorMessage" style={{color: "rgb(212, 33, 78)", fontWeight: "bold", fontSize: "15px", display: "none", marginTop: "10px" }}>Username or password is incorrect!</span>
            <hr></hr>
            </div>
            
            <div className="form__group">
            <input type="input" className="form__field" placeholder="username" required
            name = "username" value={username} onChange={(e)=>onInputChange(e)}/>
            <label className="form__label">Username</label>
            </div>

            <div className="form__group">
            <input type="password" className="form__field" placeholder="password" required
            name = "password" value={password} onChange={(e)=>onInputChange(e)}/>
            <label className="form__label">Password</label>
            </div>
            <div style={{textAlign: "center"}}>
            Dont have an account?<br></br>
            <Link to="/SignUp"className='SignUpLink'>SignUp</Link>
            </div>
        </div>
      </div>
      
      <div className = "ButtonDiv">
      <input type='submit' className='SubmitButton' 
      value="Login"></input>

      <Link to="/"><button className = "CancelButton">
        Cancel
      </button></Link>
      </div>
    </form>

  )
}


