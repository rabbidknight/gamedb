import React, { useEffect, useState } from 'react';
import axios from "axios";
import useToken from '../variables/Token'
import { useNavigate } from 'react-router-dom';

export default function GameList() {

  const { token, setToken } = useToken();
  const [games, setGames] = useState([]);
  const navigate = useNavigate();

  useEffect(()=> {  // when page is loading this is executed
    loadGames();
  },[]);

  function replaceSpaceWithDash(str) {
    return str.replace(/ /g, '-');
}

  const loadGames = async()=> {
    const result = await axios.get("http://localhost:8080/api/userlist/getuserlists", {
        headers: {
            Authorization: `Bearer ${token}`
        }
    });
    setGames(result.data);
    }

    const navigateToGame = (name)=> {
      navigate(`/game/${replaceSpaceWithDash(name)}`)
      }

    const removeGame = async(name)=> {
      const result = await axios.post("http://localhost:8080/api/userlist/removefromlist",
      {
        gamename: name,
        listname: "main"
      },
      {
          headers: {
              Authorization: `Bearer ${token}`
          }
      });
      loadGames();
      
    }

  return (
    <table className='GameTable'>
      <thead>
        <tr>
          <th style={{width:"90px"}}>Photo</th>
          <th>Name</th>
          <th style={{width:"70px"}}>Rate</th>
          <th>Console</th>
          <th>Release Year</th>
          <th>Developer</th>
          <th>Genres</th>
          <th style={{width:"100px"}}>Action</th>
        </tr>
      </thead>
      <tbody>
        {games.map((game, index) => (
          <tr key={index}>
            <td className='image-cell' style={{textAlign:"center", height:"140px", padding:"5px"}}><img src={game.imageUrl} alt={game.name} style={{width: '95px', maxHeight:"135px", cursor:"pointer"}} onClick={() => navigateToGame(game.name)} /></td>
            <td ><span style={{cursor:"pointer"}} onClick={() => navigateToGame(game.name)}>{game.name}</span></td>
            <td style={{fontSize:"17px"}}>{game.rating}</td>
            <td>{game.consoleName}</td>
            <td>{game.releaseYear}</td>
            <td>{game.developerName}</td>
            <td>{game.genres}</td>
            <td><button className='RemoveButton' onClick={()=>removeGame(game.name)}>Remove the game</button></td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
