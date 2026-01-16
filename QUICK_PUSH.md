# Quick Push to GitHub - 3 Simple Steps

## Step 1: Get Your Token (2 minutes)

1. Open: **https://github.com/settings/tokens**
2. Click: **"Generate new token (classic)"**
3. Name: `React Project`
4. Check: **`repo`** checkbox
5. Click: **"Generate token"**
6. **COPY THE TOKEN** (starts with `ghp_`)

## Step 2: Run the Push Script

Open PowerShell in this folder and run:

```powershell
.\push-github.ps1
```

When prompted, paste your token.

## Step 3: Done! ✅

Your code will be pushed to:
**https://github.com/selvarajane/14.01.26minireact**

---

## Alternative: Manual Push

If the script doesn't work, run these commands:

```powershell
# Replace YOUR_TOKEN with your actual token
git remote set-url origin https://selvarajane:YOUR_TOKEN@github.com/selvarajane/14.01.26minireact.git
git push -u origin main

# After pushing, reset remote URL for security
git remote set-url origin https://github.com/selvarajane/14.01.26minireact.git
```

---

## Need Help?

- Token creation: https://github.com/settings/tokens
- Repository: https://github.com/selvarajane/14.01.26minireact
- Make sure token has `repo` scope!
