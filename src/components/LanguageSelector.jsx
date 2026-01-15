import { useLanguage } from '../contexts/LanguageContext'
import './LanguageSelector.css'

const LanguageSelector = () => {
  const { language, changeLanguage, t } = useLanguage()

  return (
    <div className="language-selector">
      <h2>{t('language')} Selector</h2>
      <div className="language-controls">
        <button
          onClick={() => changeLanguage('en')}
          className={`lang-btn ${language === 'en' ? 'active' : ''}`}
        >
          English
        </button>
        <button
          onClick={() => changeLanguage('fr')}
          className={`lang-btn ${language === 'fr' ? 'active' : ''}`}
        >
          Français
        </button>
      </div>
      <div className="language-content">
        <p><strong>{t('welcome')}</strong></p>
        <p>{t('hello')}!</p>
        <p>{t('thankYou')}</p>
        <p>{t('goodbye')}</p>
      </div>
    </div>
  )
}

export default LanguageSelector
