import { useTheme } from '../contexts/ThemeContext'
import './ThemeSwitcher.css'

const ThemeSwitcher = () => {
  const { theme, toggleTheme } = useTheme()

  return (
    <div className={`theme-switcher ${theme}`}>
      <h2>Theme Switcher</h2>
      <p>Current Theme: <strong>{theme}</strong></p>
      <button onClick={toggleTheme} className="theme-toggle-btn">
        Switch to {theme === 'light' ? 'Dark' : 'Light'} Theme
      </button>
    </div>
  )
}

export default ThemeSwitcher
