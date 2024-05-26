import React, { useEffect, useState } from 'react';
import axios from "axios";
import useToken from '../variables/Token'

export default function GameList() {

  const { token, setToken } = useToken();
  const [games, setGames] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
    loadGames();
  },[]);

  const loadGames = async()=> {
    const result = await axios.get("http://localhost:8080/api/userlist/getuserlists", {
        headers: {
            Authorization: `Bearer ${token}`
        }
    });
    setGames(result.data);
    }

  return (
    <table className='GameTable'>
      <thead>
        <tr>
          <th style={{width:"84px"}}>Photo</th>
          <th>Name</th>
          <th>Console</th>
          <th>Release Year</th>
          <th>Developer</th>
          <th>Genres</th>
        </tr>
      </thead>
      <tbody>
        {games.map((game, index) => (
          <tr key={index}>
            <td className='image-cell' style={{textAlign:"center", width:"95px", height:"140px"}}><img src={game.imageUrl} alt={game.name} style={{width: '95px', height:"135px", paddingLeft:"5px"}} /></td>
            <td>{game.name}</td>
            <td>{game.consoleName}</td>
            <td>{game.releaseYear}</td>
            <td>{game.developerName}</td>
            <td>{game.genres}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
