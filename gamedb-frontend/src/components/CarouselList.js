import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';

// CAROUSEL
export default function List({ get_url }) {
  const [games, setGames] = useState([]);
  const [loading, setLoading] = useState(true); // Loading state
  const navigate = useNavigate(); // useNavigate kancasını kullanın

  function replaceSpaceWithDash(str) {
    return str.replace(/ /g, '-');
}

  useEffect(() => {  
    loadGames();
  }, []);

  const loadGames = async () => {
    
      const result = await axios.get(get_url);
      setGames(result.data);
      setLoading(false); // Data is loaded
    
  };

  if (loading) {
    return <div></div>; // Display a loading message or spinner
  }

  return (
    <div className="container">
      {games.map((game, index) => (
        <div
          key={index}
          className="outercontent"
          style={{
            backgroundImage: `url('${game.imageUrl}')`,
            backgroundRepeat: 'no-repeat',
            backgroundPosition: 'center',
            backgroundSize: 'cover',
          }}
          onClick={() => navigate(`/game/${replaceSpaceWithDash(game.name)}`)}
        >
          <div className="content">
            <h2 style={{marginBottom:"5px"}}>{game.name}</h2>
            <span>{game.releaseYear}</span>
            <span>{game.genres}</span>
          </div>
        </div>
      ))}
    </div>
  );
}
