import React, {useState} from 'react';
import axios from "axios";
import {FaSearch} from "react-icons/fa";
import "./SearchBar.css";

const SearchBar = ({setResults}) => {
    const [input, setInput] = useState("");

    /*const fetchData = (value) => {
        fetch("https://jsonplaceholder.typicode.com/users")
          .then((response) => response.json())
          .then((json) => {
            const results = json.filter((user) => {
              return (
                value &&
                user &&
                user.name &&
                user.name.toLowerCase().includes(value)
              );
            });
            setResults(results);
          });
      };*/


      const takeResults = async(value)=> {
        const result = await axios.post("http://localhost:8080/api/game/main/gamesearch",
        {
          gameName: value
        }
        );
        if (!value) setResults([]);
        else {
        console.log(result);
        setResults(result.data);}
        }

      const handleChange = (value) => {
        setInput(value);
        //fetchData(value);
        takeResults(value);
      };

  return (
    <div className='input-wrapper'>
      <FaSearch id='search-icon'/>
      <input placeholder='Type to search...' value={input} onChange={(e) => handleChange(e.target.value)}/>
    </div>
  )
}
export default SearchBar;

