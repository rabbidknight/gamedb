import React, { useEffect, useState } from 'react';
import axios from "axios";
import useToken from '../variables/Token';

export default function UserTable() {
  const [users, setUsers] = useState([]);
  const { token, setToken } = useToken();

  useEffect(()=> {  // when page is loading this is executed
  loadUsers();
  },[]);

  const loadUsers = ()=> {
    axios.post('http://localhost:8080/api/userlist/addtolist', 
  {
    headers: {
      Authorization: `Bearer ${token}` // Correct use of template literals
    }
  }
)
.then(response => {
  console.log(response.data);
})
.catch(error => {
  console.error('Error:', error);
});

/*
  const loadUsers = async()=> {
  const result = await axios.get("http://localhost:8080/users");
  setUsers(result.data);
  }*/

  
  }
  return (
    <table>
      <th>Index</th>
      <th>Name</th>
      <th>Username</th>
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
