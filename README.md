# React Context Examples

A React application demonstrating four different Context API implementations:

1. **Theme Switcher** - Toggle between Light and Dark themes
2. **User Authentication** - Login/Logout state management
3. **Counter with Context** - Shared counter state across multiple components
4. **Language Selector** - Switch between English and French with translations

## Features

- ✅ Theme Context (Light/Dark mode)
- ✅ Authentication Context (Login/Logout)
- ✅ Counter Context (Shared state)
- ✅ Language Context (English/French translations)

## Getting Started

### Installation

```bash
npm install
```

### Development

```bash
npm run dev
```

### Build

```bash
npm run build
```

### Preview

```bash
npm run preview
```

## Project Structure

```
src/
├── contexts/
│   ├── ThemeContext.jsx
│   ├── AuthContext.jsx
│   ├── CounterContext.jsx
│   └── LanguageContext.jsx
├── components/
│   ├── ThemeSwitcher.jsx
│   ├── UserAuth.jsx
│   ├── CounterDisplay.jsx
│   ├── CounterValue.jsx
│   └── LanguageSelector.jsx
└── App.jsx
```

## Deployment

### GitHub

1. Authenticate with GitHub:
   ```bash
   git remote set-url origin https://github.com/selvarajane/14.01.26minireact.git
   git push -u origin main
   ```

   If authentication fails, use a Personal Access Token:
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Create a new token with `repo` permissions
   - Use the token as password when pushing

### Vercel

1. Install Vercel CLI (optional):
   ```bash
   npm i -g vercel
   ```

2. Deploy via Vercel Dashboard:
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Import your GitHub repository
   - Vercel will auto-detect Vite settings
   - Click "Deploy"

3. Or deploy via CLI:
   ```bash
   vercel
   ```

The `vercel.json` configuration file is already included for optimal Vite deployment.
