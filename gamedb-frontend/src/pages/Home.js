import React, { useEffect, useState} from 'react';
import './Home.css';
import { Link } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import List from '../components/List';
import "../components/List.scss"

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
      <h1 style={{textAlign: "center", marginTop: "20px", marginBottom: "20px"}} >Popular Games</h1>
      <List />
      

    </div>
    </>
  )
}

