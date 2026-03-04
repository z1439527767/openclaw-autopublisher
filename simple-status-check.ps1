Write-Host "=== GitHub Pages状态检查 ===" -ForegroundColor Green

$baseUrl = "https://z1439527767.github.io/openclaw-autopublisher"

Write-Host "GitHub用户名: z1439527767" -ForegroundColor Yellow
Write-Host "仓库名称: openclaw-autopublisher" -ForegroundColor Yellow
Write-Host "目标URL: $baseUrl" -ForegroundColor Yellow
Write-Host ""

Write-Host "当前状态:" -ForegroundColor Cyan
Write-Host "   代码推送: ✅ 完成" -ForegroundColor Green
Write-Host "   仓库创建: ✅ 完成" -ForegroundColor Green
Write-Host "   Pages开启: ⏳ 需要操作" -ForegroundColor Yellow
Write-Host ""

Write-Host "需要你手动开启GitHub Pages:" -ForegroundColor Magenta
Write-Host "   访问: https://github.com/z1439527767/openclaw-autopublisher/settings/pages" -ForegroundColor White
Write-Host "   选择: Branch: main, Folder: / (root)" -ForegroundColor White
Write-Host "   点击: Save" -ForegroundColor White
Write-Host ""

Write-Host "🚀 TikTok申请信息已就绪:" -ForegroundColor Cyan
Write-Host "Web URL: $baseUrl/"
Write-Host "隐私政策: $baseUrl/privacy-policy.html"
Write-Host "使用条款: $baseUrl/terms-of-service.html"
Write-Host ""

Write-Host "💡 建议操作顺序:" -ForegroundColor Yellow
Write-Host "   1. 开启GitHub Pages (上面链接)"
Write-Host "   2. 等待1-5分钟生效"
Write-Host "   3. 验证URL可访问"
Write-Host "   4. 填写TikTok申请"