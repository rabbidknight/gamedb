import './App.css';

const  App = () => {
  return (
    <>
      <Navbar/>
      <div className = "SignInButtonDiv">
      <button className = "SignInButton">
        Sign In
      </button>
      </div>
    </>

  );
}
export default App;

const  Navbar = () => {
  return (
    <>
      <div  className = "Navbar">
        <p className = "Title">GameDB</p>
      </div>
      
    </>

  );
}
