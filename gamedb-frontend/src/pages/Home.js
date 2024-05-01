import React, { useEffect, useState } from 'react';
import axios from "axios";
import './Home.css';

export default function Home() {

  const [SignIn, setSignIn] = useState(0);
  const [users, setUsers] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
  loadUsers();
  },[]);

  const loadUsers = async()=> {
  const result = await axios.get("http://localhost:8080/users");
  setUsers(result.data);
  }
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

      <table>
      <th>Index</th>
      <th>Name</th>
      <th>UserName</th>
      <th>Email</th>
      {
      users.map((user,index)=>(
      <tr>
      <th scope="row" key={index}>{index+1}</th>
      <td>{user.name}</td>
      <td>{user.username}</td>
      <td>{user.email}</td>
      </tr>
      ))
    }
    </table>

    </>
  )
}

function Navbar() {
  return (

    <div  className = "Navbar">
      <a className = "Title" href="http://localhost:3000/">GameDB</a>
    </div>
      
  );
}

