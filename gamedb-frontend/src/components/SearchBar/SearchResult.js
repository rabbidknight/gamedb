import { MdHeight } from "react-icons/md";
import "./SearchBar.css";

const SearchResult = ({ result }) => {
  return (
    <div
      className="search-result"
      onClick={(e) => alert(`You selected ${result}!`)}
    >
      <img src={result[0]} style={{height: "50px"}}/>
      <span>{result[1]}</span>
    </div>
  );
};

export default SearchResult;