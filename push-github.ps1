# GitHub Push Script
# This script will help you push your code to GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GitHub Push Helper" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if we're in the right directory
if (-not (Test-Path ".git")) {
    Write-Host "Error: Not a git repository. Please run this from the sample folder." -ForegroundColor Red
    exit 1
}

Write-Host "Repository: selvarajane/14.01.26minireact" -ForegroundColor Yellow
Write-Host ""
Write-Host "To push to GitHub, you need a Personal Access Token." -ForegroundColor Yellow
Write-Host ""
Write-Host "Steps to create a token:" -ForegroundColor Green
Write-Host "1. Go to: https://github.com/settings/tokens" -ForegroundColor White
Write-Host "2. Click 'Generate new token (classic)'" -ForegroundColor White
Write-Host "3. Name it: React Mini Project" -ForegroundColor White
Write-Host "4. Select 'repo' scope" -ForegroundColor White
Write-Host "5. Click 'Generate token'" -ForegroundColor White
Write-Host "6. COPY THE TOKEN (you won't see it again!)" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Do you have a Personal Access Token ready? (y/n)"

if ($choice -ne "y" -and $choice -ne "Y") {
    Write-Host ""
    Write-Host "Please create a token first, then run this script again." -ForegroundColor Yellow
    Write-Host "Token URL: https://github.com/settings/tokens" -ForegroundColor Cyan
    exit 0
}

Write-Host ""
$token = Read-Host "Enter your Personal Access Token" -AsSecureString
$tokenPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
    [Runtime.InteropServices.Marshal]::SecureStringToBSTR($token)
)

if ([string]::IsNullOrWhiteSpace($tokenPlain)) {
    Write-Host "Error: Token cannot be empty." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Updating remote URL..." -ForegroundColor Yellow

# Update remote URL with token
$remoteUrl = "https://selvarajane:$tokenPlain@github.com/selvarajane/14.01.26minireact.git"
git remote set-url origin $remoteUrl

Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host ""

$pushResult = git push -u origin main 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  SUCCESS! Code pushed to GitHub!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "View your repository at:" -ForegroundColor Cyan
    Write-Host "https://github.com/selvarajane/14.01.26minireact" -ForegroundColor White
    Write-Host ""
    
    # Remove token from remote URL for security
    git remote set-url origin https://github.com/selvarajane/14.01.26minireact.git
    Write-Host "Remote URL updated for security." -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "  ERROR: Push failed" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host $pushResult -ForegroundColor Red
    Write-Host ""
    Write-Host "Possible issues:" -ForegroundColor Yellow
    Write-Host "- Token may be invalid or expired" -ForegroundColor White
    Write-Host "- Token may not have 'repo' scope" -ForegroundColor White
    Write-Host "- Repository may not exist on GitHub" -ForegroundColor White
    Write-Host "- You may not have access to the repository" -ForegroundColor White
    Write-Host ""
    Write-Host "Try creating a new token at: https://github.com/settings/tokens" -ForegroundColor Cyan
}

# Clear token from memory
$tokenPlain = $null
$token = $null
