import React, {Component} from "react";

function Logout(props) {
    window.localStorage.clear();
    props.history.push('/dashboard');
    return (
        <div> 
        {/* {logout1} */}
        
            you are succefully loged out
           
        </div>
    )
}

export default Logout
