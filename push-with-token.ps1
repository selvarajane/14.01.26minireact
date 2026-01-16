# PowerShell script to push to GitHub with Personal Access Token
# Usage: .\push-with-token.ps1

Write-Host "GitHub Push Helper" -ForegroundColor Green
Write-Host "===================" -ForegroundColor Green
Write-Host ""
Write-Host "Make sure you have created a Personal Access Token at:" -ForegroundColor Yellow
Write-Host "https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""
Write-Host "The token needs 'repo' scope." -ForegroundColor Yellow
Write-Host ""

$token = Read-Host "Enter your Personal Access Token" -AsSecureString
$tokenPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
    [Runtime.InteropServices.Marshal]::SecureStringToBSTR($token)
)

$username = Read-Host "Enter GitHub username (selvarajane)"

# Set remote URL with token
$remoteUrl = "https://${username}:${tokenPlain}@github.com/selvarajane/14.01.26minireact.git"
git remote set-url origin $remoteUrl

Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Green
git push -u origin main

# Clear token from memory
$tokenPlain = $null
$token = $null

Write-Host ""
Write-Host "Done! Check your repository at:" -ForegroundColor Green
Write-Host "https://github.com/selvarajane/14.01.26minireact" -ForegroundColor Cyan
