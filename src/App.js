import React from 'react';
import { BrowserRouter, Switch, Route, NavLink } from 'react-router-dom';
 
import Login from './Login';
import Dashboard from './Dashboard';
import Home from './Home';
import Logout from './Logout';
import SignInSide from './SignInSide'; 
import Mydashboard from './Mydashboard'
function App() {
  return (
    <div className="App">
      {/* <BrowserRouter>
        <div>
          <div className="header">
            <NavLink exact activeClassName="active" to="/">Home</NavLink>
            <NavLink activeClassName="active" to="/login">Login</NavLink><small></small>
            <NavLink activeClassName="active" to="/dashboard">Dashboard</NavLink><small></small>
            <NavLink activeClassName="active" to="/Logout">Logout</NavLink><small></small>
            <NavLink activeClassName="active" to="/SignInSide">new login</NavLink><small></small>
            <NavLink activeClassName="active" to="/Mydashboard">My dashboard</NavLink><small></small>
          </div>
          <div className="content">
            <Switch>
              <Route exact path="/" component={Home} />
              <Route path="/login" component={Login} />
              <Route path="/dashboard" component={Dashboard} />
              <Route path="/Logout" component={Logout} />
              <Route path="/SignInSide" component={SignInSide} />
              <Route path="/Mydashboard" component={Mydashboard} />
            </Switch>
          </div>
        </div>
      </BrowserRouter> */}
      <SignInSide />
    </div>
  );
}
 
export default App;