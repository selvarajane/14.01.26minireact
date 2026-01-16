# How to Push to GitHub

## Issue
You're authenticated as `jayachandran-jk` but the repository belongs to `selvarajane`.

## Solution: Use Personal Access Token

### Step 1: Create a Personal Access Token
1. Go to: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Give it a name like "React Mini Project"
4. Select expiration (30 days, 90 days, or no expiration)
5. Check the `repo` scope (this gives full repository access)
6. Click "Generate token"
7. **COPY THE TOKEN IMMEDIATELY** (you won't see it again!)

### Step 2: Push using the token
When you run `git push`, use your token as the password:

**Username:** `selvarajane`  
**Password:** `[paste your token here]`

### Step 3: Run the push command
```bash
cd "C:\Users\jaijk\OneDrive\Desktop\14.01.26 reactmini\sample"
git push -u origin main
```

When prompted:
- Username: `selvarajane`
- Password: `[your personal access token]`

---

## Alternative: Use SSH (if you have SSH keys set up)

If you have SSH keys configured for the `selvarajane` account:

```bash
cd "C:\Users\jaijk\OneDrive\Desktop\14.01.26 reactmini\sample"
git remote set-url origin git@github.com:selvarajane/14.01.26minireact.git
git push -u origin main
```

---

## Alternative: Use GitHub CLI

If you have GitHub CLI installed:

```bash
gh auth login
# Select GitHub.com
# Select HTTPS
# Authenticate as selvarajane
git push -u origin main
```
