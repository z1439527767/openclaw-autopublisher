Write-Host "=== TikTok Auto Publisher Deployment ===" -ForegroundColor Green

# Check if Git is installed
$gitExists = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitExists) {
    Write-Host "ERROR: Git not installed. Please install Git first." -ForegroundColor Red
    Write-Host "Download: https://git-scm.com/" -ForegroundColor Yellow
    exit 1
}

Write-Host "✓ Git is installed" -ForegroundColor Green

# Check if we're in the right directory
if (-not (Test-Path "index.html")) {
    Write-Host "ERROR: Please run this script from the tiktok-deploy folder" -ForegroundColor Red
    exit 1
}

Write-Host "✓ Directory verified" -ForegroundColor Green

# Show current files
Write-Host "Current files:" -ForegroundColor Cyan
Get-ChildItem *.html | Format-Table Name, Length -AutoSize

Write-Host "🚀 Initializing Git..." -ForegroundColor Yellow

try {
    # Initialize Git
    git init
    git add .
    git commit -m "Deploy TikTok Auto Publisher"
    
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Git operation failed: $_" -ForegroundColor Red
}

Write-Host @"

🎯 NEXT STEPS - Manual Actions Required:

1. Go to: https://github.com/new
2. Create repository: openclaw-autopublisher
3. Make it Public
4. Run these commands:

   git remote add origin https://github.com/[YOUR_USERNAME]/openclaw-autopublisher.git
   git push -u origin main

5. In GitHub Settings → Pages → Select 'main' branch
6. Wait 1-5 minutes for deployment

Your site will be available at:
https://[YOUR_USERNAME].github.io/openclaw-autopublisher/

Complete URLs for TikTok:
• Web URL: https://[YOUR_USERNAME].github.io/openclaw-autopublisher/
• Privacy: https://[YOUR_USERNAME].github.io/openclaw-autopublisher/privacy-policy.html
• Terms: https://[YOUR_USERNAME].github.io/openclaw-autopublisher/terms-of-service.html

"@ -ForegroundColor Cyan