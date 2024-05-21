import { useState, useEffect } from 'react';

const useToken = () => {
    const [token, setToken] = useState(() => {
      const storedToken = localStorage.getItem('token');
      return storedToken ? JSON.parse(storedToken) : null;
    });
  
    useEffect(() => {
      localStorage.setItem('token', JSON.stringify(token));
    }, [token]);
  
    return { token, setToken };
  };

  export default useToken;