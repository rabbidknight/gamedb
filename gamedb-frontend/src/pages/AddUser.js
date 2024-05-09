import Navbar from '../components/Navbar'
import UserTable from '../components/UserTable'
import InputForm from '../components/InputForm'
import { Link } from 'react-router-dom'

export default function AddUser() {

  const onSubmit = (e)=> {

  }

  return (
    <>
    <Navbar/>
    <InputForm/>
    <UserTable/>
    </>
  )
}
