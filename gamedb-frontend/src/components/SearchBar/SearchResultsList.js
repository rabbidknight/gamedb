import "./SearchBar.css";
import  SearchResult  from "./SearchResult";

const SearchResultsList = ({ results }) => {



  return (
    <div className="results-list" style={{backgroundColor: "#222524"}}>
      {results.map((result, id) => {
        return <SearchResult result={[result.imageUrl, result.name, result.releaseYear, result.consoleName, result.genres]} key={id} />;
      })}
    </div>
  );
};

export default SearchResultsList;