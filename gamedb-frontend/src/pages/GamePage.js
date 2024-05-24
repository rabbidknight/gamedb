import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import { Link } from 'react-router-dom'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';
import UsernamePart from '../components/UsernamePart'
import useToken from '../variables/Token'

  function GamePage() {

  const { name } = useParams();
  const navigate = useNavigate();
  const [results, setResults] = useState([]);

  function replaceDashesWithSpaces(str) {
    // String içindeki tüm tireleri boşluklarla değiştir
    return str.replace(/-/g, ' ');
}
  const { token, setToken } = useToken();
  const gameName = replaceDashesWithSpaces(name);
  const [game, setGame] = useState([]);

  const loadGame = async () => {
      const result = await axios.post("http://localhost:8080/api/game/main/gameone", {
        gameName: gameName
      });
      setGame(result.data);
  };

  useEffect(() => {
    loadGame();
    setResults([]);
    if (!game) {
      // Eğer oyun bulunamazsa ana sayfaya yönlendirme yap
      navigate('/');
    }
  }, [name]);

  const addToList = async()=> {
    const result = await axios.post("http://localhost:8080/api/userlist/addtolist",
    {
      gamename: game.name,
      listname: "main"
    },
    {
        headers: {
            Authorization: `Bearer ${token}`
        }
    });

    if (result.data == "Successfull!") {
      showSuccessMessage();
    }
  }

  function showSuccessMessage() {
    var successMessage = document.getElementById('successMessage');
    successMessage.style.display = 'block';
  }

  if (!game) {
    return null; // Yönlendirme gerçekleştiği için render edilmesine gerek yok
  }
  
  else {
  return (
    <>
    <div  className = "Navbar">
      <Link className = "Title" to="/">GameDB</Link>

      <div className='search-bar-container'>
        <SearchBar setResults = {setResults} />
        <SearchResultsList results={results} />
      </div>

      {token ? ( // Token varsa
        <>
          <Link to="/list">
            <button className="MainButton1">
              My List
            </button>
          </Link>
          
          <UsernamePart />
          
        
        </>
      ) : (// Token yoksa
        <>
          <Link to="/login">
            <button className="MainButton1">Login</button>
          </Link>
          <Link to="/sign-up">
            <button className="MainButton2">Sign Up</button>
          </Link>
        </>
      )}
    </div>

    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>

    <div className='Main'>
    <div style={{textAlign:"center"}}>
      <h1>{game.name}</h1>
      <img src={game.imageUrl} alt={game.name} />
      <h2>Console: {game.consoleName}</h2>
      <h2>Release Year: {game.releaseYear}</h2>
      <h2>Developer: {game.developerName}</h2>
      <h2>Genres: {game.genres}</h2>
      <button className='MainButton1' onClick={(e) => addToList()} style={{width:"160px"}}> Add to list</button>
      <span id="successMessage" style={{fontSize:"20px", display:"none", color:"lightgreen", marginTop:"5px"}}>Successfully added</span>
      
    </div>

    </div>
    </>

  );}
  
}

export default GamePage;
