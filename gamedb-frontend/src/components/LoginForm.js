import axios from 'axios'
import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'



export default function InputForm() {

  const [user, setUser] = useState({
    name:"",
    username:"",
    email:""
  })

  const{name, username, email} = user

  const onInputChange = (e)=> {
    setUser({...user,[e.target.name]:e.target.value})
  }

  const onLogin = async (e)=> {
   e.preventDefault();

  }

  return (
    
    <form className = "form" onLogin={(e)=>onLogin(e)}>
      <div>
        <div className='InnerFormDiv' style={{height: "280px"}}>
            <div style={{textAlign: "center", fontSize: "24px"}}>
            Login
            <hr></hr>
            </div>
            
            <div class="form__group">
            <input type="input" class="form__field" placeholder="Name" required
            name = "username" value={username} onChange={(e)=>onInputChange(e)}/>
            <label class="form__label">Email</label>
            </div>

            <div class="form__group">
            <input type="password" class="form__field" placeholder="Name" required
            name = "email" value={email} onChange={(e)=>onInputChange(e)}/>
            <label class="form__label">Password</label>
            </div>
            <div style={{textAlign: "center"}}>
            Dont have an account?<br></br>
            <Link to="/SignUp"className='LoginLink'>SignUp</Link>
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


