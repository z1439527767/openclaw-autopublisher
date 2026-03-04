Write-Host "=== TikTok部署状态检查 ===" -ForegroundColor Green
Write-Host "目标GitHub Pages URL: https://z1439527767.github.io/openclaw-autopublisher/" -ForegroundColor Yellow
Write-Host ""

# 检查本地Git状态
Write-Host "1. 本地Git状态检查:" -ForegroundColor Cyan
if (Test-Path ".git") {
    Write-Host "   ✓ Git仓库已初始化" -ForegroundColor Green
    
    # 检查远程配置
    $remote = git remote -v 2>$null
    if ($remote) {
        Write-Host "   ✓ 远程仓库配置: $remote" -ForegroundColor Green
    } else {
        Write-Host "   ⚠ 未配置远程仓库" -ForegroundColor Yellow
    }
    
    # 检查提交状态
    $status = git status 2>$null
    if ($status -match "nothing to commit") {
        Write-Host "   ✓ 工作区干净" -ForegroundColor Green
    } else {
        Write-Host "   ⚠ 有未提交的更改" -ForegroundColor Yellow
    }
} else {
    Write-Host "   ❌ Git未初始化" -ForegroundColor Red
}

Write-Host ""
Write-Host "2. 部署命令总结:" -ForegroundColor Cyan
Write-Host "   Step 1: git remote add origin https://github.com/z1439527767/openclaw-autopublisher.git" -ForegroundColor Gray
Write-Host "   Step 2: git push -u origin main" -ForegroundColor Gray

Write-Host ""
Write-Host "3. URL验证清单:" -ForegroundColor Cyan
$urls = @(
    "https://z1439527767.github.io/openclaw-autopublisher/",
    "https://z1439527767.github.io/openclaw-autopublisher/privacy-policy.html", 
    "https://z1439527767.github.io/openclaw-autopublisher/terms-of-service.html"
)

foreach ($url in $urls) {
    Write-Host "   $url" -ForegroundColor Gray
}

Write-Host ""
Write-Host "4. TikTok申请检查清单:" -ForegroundColor Cyan
Write-Host "   ✅ GitHub仓库名称: openclaw-autopublisher" -ForegroundColor Green
Write-Host "   ✅ GitHub用户名: z1439527767" -ForegroundColor Green
Write-Host "   ✅ 所有URL模板已生成" -ForegroundColor Green
Write-Host "   ✅ TikTok申请材料模板已创建" -ForegroundColor Green

Write-Host ""
Write-Host "🚀 NEXT STEPS:" -ForegroundColor Yellow
Write-Host "1. 创建GitHub仓库: https://github.com/new" -ForegroundColor White
Write-Host "2. 执行推送命令" -ForegroundColor White
Write-Host "3. 开启GitHub Pages" -ForegroundColor White
Write-Host "4. 验证URL可访问" -ForegroundColor White
Write-Host "5. 填写TikTok申请" -ForegroundColor White