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
  
  const navigate = useNavigate();
  const { token, setToken } = useToken();
  const [results, setResults] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
    navigate("/");
    },[]);
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
      <h1 style={{textAlign: "center", marginTop: "20px", marginBottom: "30px"}}>Game of the Year Award Winners</h1>
      <CarouselList get_url={"http://localhost:8080/api/game/main/goty"}/>

      {token ? ( // Token varsa
        <>
          <h1 style={{textAlign: "center", marginTop: "40px", marginBottom: "30px"}}>Recommended Games for You</h1>
          <CarouselList get_url={"http://localhost:8080/api/game/recommendation"}/>
        
        </>
      ) : ( // Token yoksa
        <>
          <h1 style={{textAlign: "center", marginTop: "40px", marginBottom: "30px"}}>Top Games</h1>
          <CarouselList get_url={"http://localhost:8080/api/game/main/highrate"}/>
        </>
      )}


    </div>
    </>
  )
}

