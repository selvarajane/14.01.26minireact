import { createContext, useContext, useState } from 'react'

const LanguageContext = createContext()

const translations = {
  en: {
    welcome: 'Welcome',
    hello: 'Hello',
    goodbye: 'Goodbye',
    thankYou: 'Thank You',
    language: 'Language'
  },
  fr: {
    welcome: 'Bienvenue',
    hello: 'Bonjour',
    goodbye: 'Au revoir',
    thankYou: 'Merci',
    language: 'Langue'
  }
}

export const LanguageProvider = ({ children }) => {
  const [language, setLanguage] = useState('en')

  const changeLanguage = (lang) => {
    setLanguage(lang)
  }

  const t = (key) => {
    return translations[language][key] || key
  }

  return (
    <LanguageContext.Provider value={{ language, changeLanguage, t }}>
      {children}
    </LanguageContext.Provider>
  )
}

export const useLanguage = () => {
  const context = useContext(LanguageContext)
  if (!context) {
    throw new Error('useLanguage must be used within a LanguageProvider')
  }
  return context
}
