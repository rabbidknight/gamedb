import Navbar from '../components/Navbar'
import UserTable from '../components/UserTable'
import SignUpForm from '../components/SignUpForm'
import backgroundImg from "../background.jpg"

export default function SignUpPage() {
  return (
    <>
    <Navbar/>
    <div>
      <img className = "Background" src={backgroundImg}/>
    </div>
    <div className='Main'>
    <SignUpForm/>
    
    </div>
    </>
  )
}
