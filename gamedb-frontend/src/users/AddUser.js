import React from 'react'
import Navbar from '../components/Navbar'
import UserTable from '../components/UserTable'
import InputForm from '../components/InputForm'

export default function AddUser() {
  return (
    <>
    <Navbar/>
    <InputForm/>
    <div className = "SignInButtonDiv">
    <button className = "SignInButton">
        Submit
      </button>
    </div>
    <UserTable/>
    </>
  )
}
