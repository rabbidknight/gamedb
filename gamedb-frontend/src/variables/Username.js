import { useState, useEffect } from 'react';

const useUsername = () => {
    const [username, setUsername] = useState(() => {
      const storedUsername = localStorage.getItem('username');
      return storedUsername ? JSON.parse(storedUsername) : null;
    });
  
    useEffect(() => {
      localStorage.setItem('username', JSON.stringify(username));
    }, [username]);
  
    return { username, setUsername };
  };

  export default useUsername;