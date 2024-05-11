import axios from 'axios'
import React, { useState } from 'react'
import { Link } from 'react-router-dom'



export default function InputForm() {

  const [Arda, setArda] = useState([])

  const [user, setUser] = useState({
    username:"",
    email:"",
    password:""
  })

  const{username, email, password} = user

  const onInputChange = (e)=> {
    setUser({...user,[e.target.name]:e.target.value})
  }

  const onSubmit = async (e)=> {
   e.preventDefault();
   const response = await axios.post("http://localhost:8080/api/auth/register", user);
  setArda(response.data);
   
   //setTimeout(function(){window.location.reload();},30);
  }

  return (
    <form className="form" onSubmit={(e)=>onSubmit(e)}>
      <div>
        <div className='InnerFormDiv'>
          <div style={{textAlign: "center", fontSize: "24px"}}>
            Sign Up
            <hr></hr>
            </div>
          <div class="form__group">
          <input type="input" class="form__field" placeholder="Userame" required 
          name="username" value={username} onChange={(e)=>onInputChange(e)}/>
          <label class="form__label">Username</label>
          </div>

          <div class="form__group">
          <input type="input" class="form__field" placeholder="Email" required
          name = "email" value={email} onChange={(e)=>onInputChange(e)}/>
          <label class="form__label">Email</label>
          </div>

          <div class="form__group">
          <input type="password" class="form__field" placeholder="Password" required
          name = "password" value={password} onChange={(e)=>onInputChange(e)}/>
          <label class="form__label">Password</label>
          </div>
          <div style={{textAlign: "center"}}>
          Already have an account?<br></br>
          <Link to="/Login"className='SignInLink'>Login</Link>
          </div>
        </div>
      </div>
      
      <div className = "ButtonDiv">
      <input type='submit' className='SubmitButton' 
      value="Sign Up"></input>

      <Link to="/"><button className = "CancelButton">
        Cancel
      </button></Link>
      </div>
      {Arda.token}
    </form>

  )
}


