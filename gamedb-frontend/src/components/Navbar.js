import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  
    return (
      <div  className = "Navbar">
        <Link className = "Title" to="/">GameDB</Link>
      </div>
        
    );
  }