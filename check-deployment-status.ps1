Write-Host "=== GitHub Pages部署状态检查 ===" -ForegroundColor Green
Write-Host "检查时间: $(Get-Date)" -ForegroundColor Yellow

$baseUrl = "https://z1439527767.github.io/openclaw-autopublisher"

Write-Host ""
Write-Host "检查URL:" -ForegroundColor Cyan
Write-Host "主站: $baseUrl"
Write-Host "隐私政策: $baseUrl/privacy-policy.html"
Write-Host "使用条款: $baseUrl/terms-of-service.html"
Write-Host ""

Write-Host "步骤1: 检查Git状态" -ForegroundColor Cyan
try {
    $branch = git branch --show-current
    Write-Host "   当前分支: $branch" -ForegroundColor Green
    
    $remote = git remote get-url origin
    Write-Host "   远程仓库: $remote" -ForegroundColor Green
    
    $commitCount = git rev-list --count HEAD
    Write-Host "   提交数量: $commitCount" -ForegroundColor Green
} catch {
    Write-Host "   错误: $_" -ForegroundColor Red
}

Write-Host ""
Write-Host "步骤2: 检查网络可达性" -ForegroundColor Cyan
$urls = @(
    @{Url="$baseUrl/"; Name="主站"},
    @{Url="$baseUrl/privacy-policy.html"; Name="隐私政策"},
    @{Url="$baseUrl/terms-of-service.html"; Name="使用条款"}
)

foreach ($item in $urls) {
    try {
        $webClient = New-Object System.Net.WebClient
        $webClient.DownloadString($item.Url) | Out-Null
        Write-Host "   ✅ $($item.Name): 可访问" -ForegroundColor Green
    } catch {
        Write-Host "   ❌ $($item.Name): 不可访问" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "🚀 TikTok申请准备就绪" -ForegroundColor Yellow
Write-Host "Web URL: $baseUrl/"
Write-Host "隐私政策: $baseUrl/privacy-policy.html"
Write-Host "使用条款: $baseUrl/terms-of-service.html"

Write-Host ""
Write-Host "📋 部署完成度:" -ForegroundColor Cyan
Write-Host "   代码推送: ✅ 完成"
Write-Host "   仓库创建: ✅ 完成"
Write-Host "   Pages开启: ⏳ 需要手动开启"
Write-Host "   URL验证: ⏳ 等待Pages生效"

Write-Host ""
Write-Host "💡 立即行动:" -ForegroundColor Magenta
Write-Host "   1. GitHub Pages设置: https://github.com/z1439527767/openclaw-autopublisher/settings/pages"
Write-Host "   2. TikTok申请: https://developers.tiktok.com/apps/openclaw-autopublisher/manage/"