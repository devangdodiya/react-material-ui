import React from 'react';
 
function Home(props) {
    if (localStorage.getItem("userData") === null) {
        props.history.push('/login');
      }
  return (
    <div>
      Welcome to the Home Page!
    </div>
  );
}
 
export default Home;