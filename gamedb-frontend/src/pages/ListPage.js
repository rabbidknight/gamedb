import Navbar from '../components/Navbar'
import backgroundImg from "../background.jpg"
import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';
import useToken from '../variables/Token'
import UsernamePart from '../components/UsernamePart'
import GameList from '../components/GameList';


export default function MyList() {

  const navigate = useNavigate();
  const {token, setToken } = useToken();
  const [results, setResults] = useState([]);

  useEffect(() => {
    if (!token) {
      // Eğer oyun bulunamazsa ana sayfaya yönlendirme yap
      navigate('/');
    }
  }, []);

  if (!token) {
    // Eğer oyun bulunamazsa ana sayfaya veya 404 sayfasına yönlendirme yapabilirsiniz
    return null;
  }

  return (
    <>
    <div  className = "Navbar">
      <Link className = "Title" to="/">GameDB</Link>

      <div className='search-bar-container'>
        <SearchBar setResults = {setResults} />
        <SearchResultsList results={results} />
      </div>

      <Link to="/">
        <button className="MainButton1"> Home </button>
      </Link>
      <UsernamePart />
    </div>

    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>

    <div className='Main'>
      <GameList />

    </div>
    </>
  )
}
