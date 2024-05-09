import axios from 'axios'
import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'

export default function InputForm() {

  let navigate = useNavigate()
  
  const [user, setUser] = useState({
    name:"",
    username:"",
    email:""
  })

  const{name, username, email} = user

  const onInputChange = (e)=> {
    setUser({...user,[e.target.name]:e.target.value})
  }

  const onSubmit = async (e)=> {
   e.preventDefault();
   await axios.post("http://localhost:8080/addUser",user)
   setTimeout(function(){window.location.reload();},30);
  }

  return (
    <form onSubmit={(e)=>onSubmit(e)}>
      <div>
        <div class="form__group">
        <input type="input" class="form__field" placeholder="Name" required 
        name="name" value={name} onChange={(e)=>onInputChange(e)}/>
        <label class="form__label">Name</label>
        </div>

        <div class="form__group">
        <input type="input" class="form__field" placeholder="Name" required
        name = "username" value={username} onChange={(e)=>onInputChange(e)}/>
        <label class="form__label">Username</label>
        </div>

        <div class="form__group">
        <input type="input" class="form__field" placeholder="Name" required
        name = "email" value={email} onChange={(e)=>onInputChange(e)}/>
        <label class="form__label">Email</label>
        </div>
      </div>
      
      <div className = "ButtonDiv">
      <input type='submit' className='SubmitButton' 
      value="Submit"></input>

      <Link to="/"><button className = "CancelButton">
        Cancel
      </button></Link>
      </div>
    </form>

  )
}
