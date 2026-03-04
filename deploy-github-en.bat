@echo off
echo ==========================================
echo   TikTok Auto Publisher Deployment Tool
echo ==========================================
echo.

REM Check if Git is installed
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git not installed. Please install Git: https://git-scm.com/
    pause
    exit /b 1
)

echo ✓ Git is installed

REM Check if in correct directory
if not exist "index.html" (
    echo ERROR: Please run this script inside tiktok-deploy folder
    echo        Copy files to tiktok-deploy folder and run again
    pause
    exit /b 1
)

echo ✓ Directory structure verified

echo 📁 Current files:
dir /b *.html

echo.
echo 🚀 Preparing GitHub deployment...

REM Initialize Git
echo Initializing Git repository...
git init
git add .

REM Commit changes
echo Committing changes...
git commit -m "Deploy TikTok Auto Publisher"

echo.
echo =======================================
echo ✅ Manual Steps Required
echo =======================================
echo.
echo 1. Go to https://github.com/new
echo 2. Create repository: openclaw-autopublisher
echo 3. Set repository to Public
echo 4. Copy and execute these commands:
echo.
echo git remote add origin https://github.com/[YOUR_USERNAME]/openclaw-autopublisher.git
echo git push -u origin main
echo.
echo 5. In GitHub repository Settings, enable Pages
echo 6. Select main branch for deployment
echo.
echo Your site will be available at:
echo https://[YOUR_USERNAME].github.io/openclaw-autopublisher/
echo.
pause