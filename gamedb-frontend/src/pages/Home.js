import React, { useEffect, useState, useMemo , memo} from 'react';
import './Home.css';
import { Link } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import api from "../api/axiosConfig.js"
import axios from 'axios';


export default function Home() {
/*
  const [Games, setGames] = useState();

  const getGames = async()=> {
    try {
      const response = await api.get("/463");
      console.log(response.data);
      setGames(response.data);
    } catch (error) {
      console.error(error);
    }
  }

  useEffect(() => {
    getGames();
  },[])
*/
  const [users, setUsers] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
  loadUsers();
  },[]);

  const loadUsers = async()=> {
  const result = await axios.get("http://localhost:8080/users");
  console.log(result.data)
  setUsers(result.data);
  }


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

