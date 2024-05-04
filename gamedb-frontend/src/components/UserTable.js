import React, { useEffect, useState } from 'react';
import axios from "axios";

export default function UserTable() {
  const [users, setUsers] = useState([]);

  useEffect(()=> {  // when page is loading this is executed
  loadUsers();
  },[]);

  const loadUsers = async()=> {
  const result = await axios.get("http://localhost:8080/users");
  setUsers(result.data);
  }
  return (
    <table>
      <th>Index</th>
      <th>Name</th>
      <th>UserName</th>
      <th>Email</th>
      {
      users.map((user,index)=>(
      <tr>
      <th scope="row" key={index}>{index+1}</th>
      <td>{user.name}</td>
      <td>{user.username}</td>
      <td>{user.email}</td>
      </tr>
      ))
    }
    </table>
  )
}
