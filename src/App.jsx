import { ThemeProvider } from './contexts/ThemeContext'
import { AuthProvider } from './contexts/AuthContext'
import { CounterProvider } from './contexts/CounterContext'
import { LanguageProvider } from './contexts/LanguageContext'
import ThemeSwitcher from './components/ThemeSwitcher'
import UserAuth from './components/UserAuth'
import CounterDisplay from './components/CounterDisplay'
import CounterValue from './components/CounterValue'
import LanguageSelector from './components/LanguageSelector'
import './App.css'

function App() {
  return (
    <ThemeProvider>
      <AuthProvider>
        <CounterProvider>
          <LanguageProvider>
            <div className="app-container">
              <h1>React Context Examples</h1>
              <ThemeSwitcher />
              <UserAuth />
              <CounterDisplay />
              <CounterValue />
              <LanguageSelector />
            </div>
          </LanguageProvider>
        </CounterProvider>
      </AuthProvider>
    </ThemeProvider>
  )
}

export default App
