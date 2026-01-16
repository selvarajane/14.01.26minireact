# GitHub Upload Instructions

## Problem
The code is not uploading because of authentication issues. You're logged in as `jayachandran-jk` but need to push to `selvarajane`'s repository.

## Solution: Follow these steps

### Step 1: Create Personal Access Token

1. **Go to GitHub Settings:**
   - Visit: https://github.com/settings/tokens
   - Or: GitHub → Your Profile → Settings → Developer settings → Personal access tokens → Tokens (classic)

2. **Generate New Token:**
   - Click "Generate new token (classic)"
   - Name: `React Mini Project`
   - Expiration: Choose 90 days or No expiration
   - **IMPORTANT:** Check the `repo` checkbox (this gives full repository access)
   - Scroll down and click "Generate token"

3. **Copy the Token:**
   - **COPY IT IMMEDIATELY** - you won't see it again!
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

### Step 2: Push to GitHub

Open PowerShell in the `sample` folder and run:

```powershell
cd "C:\Users\jaijk\OneDrive\Desktop\14.01.26 reactmini\sample"

# Replace YOUR_TOKEN with the token you copied
git remote set-url origin https://selvarajane:YOUR_TOKEN@github.com/selvarajane/14.01.26minireact.git

# Now push
git push -u origin main
```

**Example:**
```powershell
git remote set-url origin https://selvarajane:ghp_abc123xyz@github.com/selvarajane/14.01.26minireact.git
git push -u origin main
```

### Step 3: Verify

After pushing, check your repository:
https://github.com/selvarajane/14.01.26minireact

---

## Alternative: Use GitHub Desktop

1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in as `selvarajane`
3. File → Add Local Repository
4. Select the `sample` folder
5. Click "Publish repository"

---

## Alternative: Use GitHub CLI

If you have GitHub CLI installed:

```powershell
gh auth login
# Select: GitHub.com
# Select: HTTPS
# Authenticate as: selvarajane
# Then:
git push -u origin main
```

---

## Troubleshooting

**If you get "repository does not exist":**
- Make sure the repository exists at: https://github.com/selvarajane/14.01.26minireact
- If it doesn't exist, create it first on GitHub, then push

**If token doesn't work:**
- Make sure you selected `repo` scope when creating the token
- Make sure you copied the entire token (starts with `ghp_`)

**If you're still having issues:**
- Try using GitHub Desktop (easiest method)
- Or use SSH keys if you have them set up
