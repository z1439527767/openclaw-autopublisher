@echo off
echo ====================================
echo   TikTok Auto Publisher 部署工具
echo ====================================
echo.

REM 检查Git安装
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git未安装，请先安装Git: https://git-scm.com/
    pause
    exit /b 1
)

echo ✅ Git已安装

REM 检查是否在正确的目录
if not exist "index.html" (
    echo ❌ 请在tiktok-deploy文件夹内运行此脚本
    echo   将文件复制到tiktok-deploy文件夹，然后重新运行
    pause
    exit /b 1
)

echo 📁 当前目录文件检查...
dir /b *.html

echo.
echo 🚀 准备部署到GitHub

REM 初始化Git
echo 📝 初始化Git仓库...
git init
git add .

REM 提交更改
echo 💾 提交更改...
git commit -m "Deploy TikTok Auto Publisher"

echo.
echo ================================
echo 🎯 下一步手动操作指南
echo ================================
echo.
echo 1. 访问 https://github.com/new
echo 2. 创建仓库: openclaw-autopublisher
echo 3. 设置仓库为公开 (Public)
echo 4. 复制以下命令，按顺序执行：
echo.
echo git remote add origin https://github.com/[你的用户名]/openclaw-autopublisher.git
echo git push -u origin main
echo.
echo 5. 在GitHub仓库Settings中开启Pages
echo 6. 选择main分支部署
echo.
echo 完成后访问：https://[你的用户名].github.io/openclaw-autopublisher/
echo.
pause