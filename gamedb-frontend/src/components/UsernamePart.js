import React, { useEffect, useState} from 'react';
import { SlArrowDown } from "react-icons/sl";
import { TiArrowSortedDown } from "react-icons/ti";
import { MdLogout } from "react-icons/md";
import useToken from '../variables/Token'
import '../pages/Home.css';
import { useNavigate } from 'react-router-dom'
import useUsername from '../variables/Username';

export default function UsernamePart() {

  const {username, setUsername } = useUsername();
  const navigate = useNavigate();
  const { token, setToken } = useToken();
  const handleLogout = () => {
    setToken(null); // Token'i silmek için setToken(null) çağrısı
    setUsername(null); // Delete username from localStorage
    setTimeout(function(){window.location.reload();}, 30);
    setTimeout(function(){navigate("/");}, 25);
  };

    return (
      <div className="Username-part" tabIndex="0">
        <div className='Username-field'>{username} </div> <div style={{fontSize: "25px", color: "white", display:"inline-block", marginTop:"5px"}}><TiArrowSortedDown /></div>
        <div className="Username-field-bottom">
          <hr style={{marginTop:"-3px"}}></hr>
          <button>Profile</button>
          <button>Settings</button>
          <button style={{display: 'inline-flex', alignItems: "center"}} onClick={handleLogout}>Logout <MdLogout style={{fontSize:"15px", marginLeft:"4px"}}/></button>
        </div>
    </div>
        
    );
  }