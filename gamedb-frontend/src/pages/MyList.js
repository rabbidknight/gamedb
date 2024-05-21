import Navbar from '../components/Navbar'
import UserTable from '../components/UserTable'
import SignUpForm from '../components/SignUpForm'
import backgroundImg from "../background.jpg"
import { useState } from 'react'
import { Link } from 'react-router-dom'
import SearchBar from '../components/SearchBar/SearchBar';
import SearchResultsList from '../components/SearchBar/SearchResultsList';
import useToken from '../variables/Token'
import UsernamePart from '../components/UsernamePart'


export default function AddUser() {

  const { token, setToken } = useToken();
  

  const [results, setResults] = useState([]);

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
      <UserTable />

    </div>
    </>
  )
}
