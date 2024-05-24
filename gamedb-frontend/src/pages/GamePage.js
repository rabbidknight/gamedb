import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import { Link } from 'react-router-dom'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';
import UsernamePart from '../components/UsernamePart'


  function GamePage() {

  const { name } = useParams();
  const navigate = useNavigate();
  const [results, setResults] = useState([]);

  function replaceDashesWithSpaces(str) {
    // String içindeki tüm tireleri boşluklarla değiştir
    return str.replace(/-/g, ' ');
}

  const gameName = replaceDashesWithSpaces(name);
  const [game, setGame] = useState([]);
  const [loading, setLoading] = useState(true);

  const loadGame = async () => {
      const result = await axios.post("http://localhost:8080/api/game/main/gameone", {
        gameName: gameName
      });
      setGame(result.data);
      setLoading(false); // Yükleme tamamlandı
  };

  useEffect(() => {
    loadGame();
    if (!loading && !game) {
      // Eğer oyun bulunamazsa ana sayfaya yönlendirme yap
      navigate('/');
    }
  }, [loading, game, navigate]);

  if (loading) {
    return null; // Yüklenirken hiçbir şey gösterme
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

      <Link to="/list">
        <button className="MainButton1"> My List </button>
      </Link>
      <UsernamePart />
    </div>

    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>

    <div className='Main'>
    <div>
      <h1>{game.name}</h1>
      <img src={game.imageUrl} alt={game.name} />
      <h2>Console: {game.consoleName}</h2>
      <h2>Release Year: {game.releaseYear}</h2>
      <h2>Developer: {game.developerName}</h2>
      <h2>Genres: {game.genres}</h2>
    </div>

    </div>
    </>

  );}
  
}

export default GamePage;
