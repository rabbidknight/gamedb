import Navbar from '../components/Navbar'
import UserTable from '../components/UserTable'
import InputForm from '../components/SignUpForm'
import backgroundImg from "../background.jpg"

export default function AddUser() {
  return (
    <>
    <Navbar/>
    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>
    <div className='Main'>
    <InputForm/>
    
    </div>
    </>
  )
}
