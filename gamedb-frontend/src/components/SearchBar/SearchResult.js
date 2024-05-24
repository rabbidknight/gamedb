import { MdHeight } from "react-icons/md";
import "./SearchBar.css";
import "../../pages/Home.css"
import { useState } from "react";
import { useNavigate } from "react-router-dom";

const SearchResult = ({ result }) => {

  function replaceSpaceWithDash(str) {
    return str.replace(/ /g, '-');
}
  const navigate = useNavigate();
  const [address, setAdress] = useState();

  function navigateToGame() {
    navigate(`/game/${replaceSpaceWithDash(result[1])}`)
    /*setTimeout(function() {
        window.location.reload();
    }, 10);*/
}

  return (
    <>
    <div style={{display: "inline-flex", height:"90px", padding:"5px"}}
      className="search-result"
      //onClick={(e) => alert(`You selected ${result}!`)
      onClick={(e) => navigateToGame()}
    >
      <img src={result[0]} style={{height: "100%", marginRight:"10px", minWidth:"62px"}}/>
      <div style={{paddingLeft:"2px", paddingTop:"7px"}}>
        <span style={{color:"white", fontWeight:"bold"}}>{result[1]}</span> 
        <br></br>
        <span style={{color:"rgb(179, 179, 179)"}}>{result[2]}  {result[3]}</span>
        <br></br>
        <span style={{color:"rgb(179, 179, 179)"}}>{result[4]}</span>
      </div>
    </div>
    <div>
    <hr style={{backgroundColor: "black", width:"100%", height:"1px", margin:"0px"}}></hr>
    </div>
    </>
  );
};

export default SearchResult;