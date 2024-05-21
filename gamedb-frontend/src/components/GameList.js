import React, { useState } from 'react';

export default function GameList() {
  const [games, setGames] = useState([
    {
      name: 'The Legend of Zelda: Breath of the Wild',
      console: 'Nintendo Switch',
      releaseYear: 2017,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg/220px-The_Legend_of_Zelda_Breath_of_the_Wild.jpg'
    },
    {
      name: 'God of War',
      console: 'PlayStation 4',
      releaseYear: 2018,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/God_of_War_4_cover.jpg/220px-God_of_War_4_cover.jpg'
    },
    {
      name: 'Red Dead Redemption 2',
      console: 'PlayStation 4, Xbox One',
      releaseYear: 2018,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/44/Red_Dead_Redemption_II.jpg/220px-Red_Dead_Redemption_II.jpg'
    },
    {
      name: 'Elden Ring',
      console: 'PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, PC',
      releaseYear: 2022,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/Elden_Ring_Box_art.jpg/220px-Elden_Ring_Box_art.jpg'
    }
  ]);

  return (
    <table className='GameTable'>
      <thead>
        <tr>
          <th>Photo</th>
          <th>Name</th>
          <th>Console</th>
          <th>Release Year</th>
        </tr>
      </thead>
      <tbody>
        {games.map((game, index) => (
          <tr key={index}>
            <td className='image-cell' style={{textAlign:"center", width:"110px"}}><img src={game.imageUrl} alt={game.name} style={{width: '100px'}} /></td>
            <td>{game.name}</td>
            <td>{game.console}</td>
            <td>{game.releaseYear}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
