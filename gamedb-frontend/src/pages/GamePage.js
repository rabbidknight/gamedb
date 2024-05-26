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

  const splitStringToArray = (str) => {
    return str.split(',').map(item => item.trim());
  };

  const [rating, setRating] = useState('');

  const handleRatingChange = (e) => {
    let value = e.target.value;

    // Only allow empty input, or valid numbers between 0 and 10 with up to one decimal place
    if (value === '' || (value.match(/^(\d{1,2})(\.\d?)?$/) && parseFloat(value) <= 10)) {
      setRating(value);
    }
  };


  const { token, setToken } = useToken();
  const gameName = replaceDashesWithSpaces(name);
  const [game, setGame] = useState([]);

  const loadGame = async () => {
      const result = await axios.post("http://localhost:8080/api/game/main/gameone", {
        gameName: gameName
      });
      console.log(result.data);
      setGame(result.data);
      setConsolesArray(splitStringToArray(result.data.consoleName));
      setGenresArray(splitStringToArray(result.data.genres));
  };

  const [consolesArray, setConsolesArray] = useState([]);
  const [genresArray, setGenresArray] = useState([]);

  useEffect(() => {
    hideSuccessMessage();
    loadGame();
    setResults([]);
    if (!game) {
      // Eğer oyun bulunamazsa ana sayfaya yönlendirme yap
      navigate('/');
    }
  }, [name]);

  const addToList = async(e)=> {
    e.preventDefault();
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
    console.log(rating)
    const result2 = await axios.post("http://localhost:8080/api/rating/addrating",
    {
      gamename: game.name,
      rating: rating
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

  function hideSuccessMessage() {
    var successMessage = document.getElementById('successMessage');
    successMessage.style.display = 'none';
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
      <div className="game-info">
        <div className='TopDiv'>
          <div>
          <img src={game.imageUrl} alt={game.name} style={{}}/>
          </div>
            <div className='MainInfo'>
              <div style={{display:"inline-flex"}}>
              <h1 className="game-title" >{game.name}</h1>
              <h1 className="game-title" style={{marginLeft:"auto", marginRight:"20px", marginTop:"25px", fontSize:"28px"}}>Rate: {game.rating}/10</h1>
              </div>
              <p className="game-release-year">Release Year: {game.releaseYear}</p>
              <p className="game-description">{game.description}</p>
              {token ? (
              <div>
                <form onSubmit={(e)=>addToList(e)}>
                  <button type='submit' className='AddToListButton'>Add to list</button>
                  <input type="text" className="RatingInput" required placeholder="Rate (0-10)"value={rating} onChange={handleRatingChange}/>
                </form>
              </div>
      ) : (
        <></>
      )}
                <span id="successMessage" style={{fontSize:"20px", display:"none", color:"lightgreen", marginTop:"10px"}}>Successfully added</span>
            </div>
        </div>
            <div className="game-details">
                <div className="game-section">
                <h2>Consoles</h2>
                    <ul>
                        {consolesArray.map((console, index) => (
                            <li key={index}>{console}</li>
                        ))}
                    </ul>
                </div>
                <div className="game-section">
                    <h2>Genres</h2>
                    <ul>
                        {genresArray.map((genre, index) => (
                            <li key={index}>{genre}</li>
                        ))}
                    </ul>
                </div>
                <div className="game-section">
                    <h2>Developer</h2>
                    <ul>
                    <li>{game.developerName}</li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    </>

  );}
  
}

export default GamePage;
