@echo off
echo ========================================
echo   GitHub Push Helper
echo ========================================
echo.
echo Repository: selvarajane/14.01.26minireact
echo.
echo To push to GitHub, you need a Personal Access Token.
echo.
echo Steps to create a token:
echo 1. Go to: https://github.com/settings/tokens
echo 2. Click "Generate new token (classic)"
echo 3. Name it: React Mini Project
echo 4. Select "repo" scope
echo 5. Click "Generate token"
echo 6. COPY THE TOKEN (you won't see it again!)
echo.
set /p token="Enter your Personal Access Token: "

if "%token%"=="" (
    echo Error: Token cannot be empty.
    pause
    exit /b 1
)

echo.
echo Updating remote URL...
git remote set-url origin https://selvarajane:%token%@github.com/selvarajane/14.01.26minireact.git

echo Pushing to GitHub...
echo.
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Code pushed to GitHub!
    echo ========================================
    echo.
    echo View your repository at:
    echo https://github.com/selvarajane/14.01.26minireact
    echo.
    REM Remove token from remote URL for security
    git remote set-url origin https://github.com/selvarajane/14.01.26minireact.git
    echo Remote URL updated for security.
) else (
    echo.
    echo ========================================
    echo   ERROR: Push failed
    echo ========================================
    echo.
    echo Possible issues:
    echo - Token may be invalid or expired
    echo - Token may not have "repo" scope
    echo - Repository may not exist on GitHub
    echo - You may not have access to the repository
    echo.
    echo Try creating a new token at: https://github.com/settings/tokens
)

pause
