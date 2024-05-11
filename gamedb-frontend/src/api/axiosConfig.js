import axios from "axios";

export default axios.create({
  method: 'GET',
  baseURL: 'https://opencritic-api.p.rapidapi.com/game',
  headers: {
    'X-RapidAPI-Key': '5aeee4c095msh3e4332dc088a7ecp1d6c60jsn89a9eb18990a',
    'X-RapidAPI-Host': 'opencritic-api.p.rapidapi.com'
  }
});