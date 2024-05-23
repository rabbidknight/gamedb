import React, { useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';


  function GamePage() {

  const { name } = useParams();
  const navigate = useNavigate();

  function replaceDashesWithSpaces(str) {
    // String içindeki tüm tireleri boşluklarla değiştir
    return str.replace(/-/g, ' ');
}

  const gameName = replaceDashesWithSpaces(name);


/*
  useEffect(() => {
    
    
    if (!game) {
      // Eğer oyun bulunamazsa ana sayfaya yönlendirme yap
      navigate('/');
    }
  }, [game, navigate]);

  if (!game) {
    return null; // Yönlendirme gerçekleştiği için render edilmesine gerek yok
  }

  return (
    <div>
      <h1>{game.name}</h1>
      <img src={game.image} alt={game.name} />
      <p>{game.description}</p>
    </div>
  );*/
}

export default GamePage;
