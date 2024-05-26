import React, { useEffect, useState} from 'react';
import './Home.css';
import { Link, useNavigate } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import CarouselList from '../components/CarouselList';
import "../components/CarouselList.css"
import useToken from '../variables/Token'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';
import UsernamePart from '../components/UsernamePart';


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

/*
axios.get('https://example.com/api/data', {
  headers: {
    Authorization: `Bearer ${token}` // Bearer token'i Authorization başlığında gönder
  }
})
  .then(response => {
    console.log(response.data);
  })
  .catch(error => {
    console.error('Error:', error);
  });
*/
  
  const navigate = useNavigate();
  const { token, setToken } = useToken();
  const [results, setResults] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
    navigate("/");
    },[]);
    console.log(token);
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
      <h1 style={{textAlign: "center", marginTop: "20px", marginBottom: "30px"}}>
        Game of the Year Award Winners</h1>
      <CarouselList get_url={"http://localhost:8080/api/game/main/goty"}/>
      <h1 style={{textAlign: "center", marginTop: "40px", marginBottom: "30px"}}>
        Best Games</h1>
      <CarouselList get_url={"http://localhost:8080/api/game/main/goty"}/>

    </div>
    </>
  )
}

