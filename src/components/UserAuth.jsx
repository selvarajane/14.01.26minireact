import { useAuth } from '../contexts/AuthContext'
import './UserAuth.css'

const UserAuth = () => {
  const { isLoggedIn, login, logout } = useAuth()

  return (
    <div className="user-auth">
      <h2>User Authentication</h2>
      {isLoggedIn ? (
        <div className="auth-content">
          <p className="auth-status">Status: <strong>Logged In</strong></p>
          <p className="auth-message">Welcome! You are logged in.</p>
          <button onClick={logout} className="auth-btn logout-btn">
            Logout
          </button>
        </div>
      ) : (
        <div className="auth-content">
          <p className="auth-status">Status: <strong>Not Logged In</strong></p>
          <p className="auth-message">Please log in to access content.</p>
          <button onClick={login} className="auth-btn login-btn">
            Login
          </button>
        </div>
      )}
    </div>
  )
}

export default UserAuth
