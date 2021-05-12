import React, { useState } from 'react';
import axios from "axios";
function Login(props) {
    const [Email, setEmail] = useState("");
    const [Password, setPassword] = useState("");
    const [Error, setError] = useState("")
    const [login, setlogin] = useState("true")
 
  // handle button click of login form
  const handleLogin = () => {
    props.history.push('/dashboard');
  }
  function logincheck() {
    const formData = new FormData();
    formData.append('email', Email)
    formData.append('password', Password)
    axios.post("http://localhost/react/demo/login.php", formData).then(respon => {
        setError(respon.data);
        let responseJson = respon;
        if (respon.data === 1) {
            // sessionStorage.setItem('userData',JSON.stringify(responseJson));
            localStorage.setItem('userData',JSON.stringify(responseJson));
            props.history.push('/home');
        }

    })
        .then(error => {
            console.log(error)
        }) 
  }
  function formhandler(event) {
    event.preventDefault();
  }
  return (
    <div>
    <form onSubmit={formhandler}>
      <h1>Login form</h1>
      <br />
      <label for="email">email :</label>
      <input
        type="email"
        id="email"
        name="email"
        placeholder="user email"
        onChange={(e) => {
          setEmail(e.target.value);
        }}
      />
      <br />
      <br />
      <label for="password">email :</label>
      <input
        type="password"
        id="password"
        name="password"
        placeholder="user password"
        onChange={(e) => {
          setPassword(e.target.value);
        }}
      />
      <br />
      <br />
      <input type="submit" onClick={logincheck}  />
    </form>
    {/* <input type="submit" onClick={logout} /> */}
  </div>
  );
}
 

 
export default Login;