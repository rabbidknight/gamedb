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
    email:"",
    password:""
  })

  const{username, email, password} = user

  const onInputChange = (e)=> {
    setUser({...user,[e.target.name]:e.target.value})
  }

  const handleCancel = () => {
    navigate('/');
  };

  const onSubmit = async (e)=> {
   e.preventDefault();
   try {
    const response = await axios.post("http://localhost:8080/api/auth/register", user);
    setToken(response.data.token);
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
    form.style.height = '383px';
}

  return (
    <form className="form" onSubmit={(e)=>onSubmit(e)}>
      <div>
        <div id='form' className='InnerFormDiv'>
          <div style={{textAlign: "center", fontSize: "24px"}}>
            <span>Sign Up</span>
            <br></br><span id="errorMessage" style={{color: "rgb(212, 33, 78)", fontWeight: "bold", fontSize: "15px", display: "none", marginTop: "10px" }}>Username or Email already exists</span>
            <hr></hr>
            </div>
          <div className="form__group">
          <input type="text" className="form__field" placeholder="Userame" required 
          name="username" value={username} onChange={(e)=>onInputChange(e)}/>
          <label className="form__label">Username</label>
          </div>

          <div className="form__group">
          <input type="email" className="form__field" placeholder="Email" required
          name = "email" value={email} onChange={(e)=>onInputChange(e)}/>
          <label className="form__label">Email</label>
          </div>

          <div className="form__group">
          <input type="password" className="form__field" placeholder="Password" required
          name = "password" value={password} onChange={(e)=>onInputChange(e)}/>
          <label className="form__label">Password</label>
          </div>
          <div style={{textAlign: "center"}}>
          Already have an account?<br></br>
          <Link to="/login"className='LoginLink'>Login</Link>
          </div>
        </div>
      </div>
      
      <div className = "ButtonDiv">
      <button type='button' className = "CancelButton" onClick={handleCancel}>
        Cancel
      </button>

      <input type='submit' className='SubmitButton' 
      value="Sign Up"></input>

      </div>
    </form>

  )
}


