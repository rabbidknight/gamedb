import React, { useEffect, useState} from 'react';
import './Home.css';
import { Link } from 'react-router-dom';
import backgroundImg from "../background.jpg"
import List from '../components/List';
import "../components/List.css"
import useToken from '../variables/Token'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';

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
  

  const { token, setToken } = useToken();

  const handleLogout = () => {
    setToken(null); // Token'i silmek için setToken(null) çağrısı
  };

  const [results, setResults] = useState([]);

  return (
    <>
    <div  className = "Navbar">
      <Link className = "Title" to="/">GameDB</Link>

      {token ? ( // Token varsa
        <>
          <Link to="/">
            <button className="MainButton1" onClick={handleLogout}>
              Logout
            </button>
          </Link>
          <Link to="/">
            <button className="MainButton2">My List</button>
          </Link>
        </>
      ) : (// Token yoksa
        <>
          <Link to="/SignUp">
            <button className="MainButton1">Sign Up</button>
          </Link>
          <Link to="/Login">
            <button className="MainButton2">Login</button>
          </Link>
        </>
      )}
    
    </div>

    <div className='search-bar-container'>
        <SearchBar setResults = {setResults} />
        <SearchResultsList results={results} />
      </div>

    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>
    
    
    <div className='Main'>
      <h1 style={{textAlign: "center", marginTop: "20px", marginBottom: "30px"}}>
        Popular Games</h1>
      <List />
      <h1 style={{textAlign: "center", marginTop: "40px", marginBottom: "30px"}}>
        Best Games</h1>
      <List />
      

    </div>
    </>
  )
}

