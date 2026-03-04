# GitHub快速部署脚本

## 📋 自动创建仓库的两种方式

### 方式1: GitHub CLI (推荐)
```bash
# 安装GitHub CLI
# 然后运行：

# 创建仓库
git init
git add .
git commit -m "Initial commit"

# 使用GitHub CLI创建远程仓库
gh repo create openclaw-autopublisher --public --description "OpenClaw Auto Publisher - TikTok自动化发布工具" --push

# 开启Pages
gh repo pages enable openclaw-autopublisher
```

### 方式2: 手动创建
```bash
# 手动创建仓库并推送
git init
git add .
git commit -m "Initial commit"

# 添加远程仓库
git remote add origin https://github.com/[你的用户名]/openclaw-autopublisher.git

# 推送代码
git push -u origin main
```

## 🎯 GitHub网站操作指南

### 创建新仓库https://github.com/new
填写信息：
- **Repository name**: `openclaw-autopublisher`
- **Description**: `OpenClaw Auto Publisher - TikTok自动化发布工具`
- **Public** ✅
- **Initialize this repository with a README** ✅
- **Add .gitignore**: None
- **Choose a license**: None

### 上传文件方法
1. 进入仓库主页
2. 点击 "Add file" → "Upload files"
3. 全选`tiktok-deploy`文件夹内文件
4. 拖动到上传区域
5. 提交更改

### 开启GitHub Pages
1. 进入仓库 Settings
2. 左侧菜单选择 Pages
3. Source 选择 "Deploy from a branch"
4. Branch 选择 "main"，文件夹选择 "/ (root)"
5. 保存

## 📊 部署验证

### 验证URL
等待1-5分钟后，访问：
```
https://你的用户名.github.io/openclaw-autopublisher/
```

### 应该看到：
- OpenClaw Auto Publisher 标题
- 应用功能介绍
- 专业的企业级界面

## 🚨 常见问题解决

### 404错误
- 等待几分钟让Pages生效
- 检查文件名是否正确
- 确保文件在main分支

### 权限问题
- 确保仓库设置为公开
- 检查用户名和仓库名拼写

### Pages不显示
- 等待GitHub自动部署完成
- 检查Settings → Pages状态

## 🎉 完成部署

部署成功后，在TikTok开发者平台填写：
```
Web URL: https://你的用户名.github.io/openclaw-autopublisher/
隐私政策: https://你的用户名.github.io/openclaw-autopublisher/privacy-policy.html
使用条款: https://你的用户名.github.io/openclaw-autopublisher/terms-of-service.html
```

## ➕ 额外优化

如果需要增强网站效果，可以：
- 添加favicon图标
- 优化移动端显示
- 添加应用截图展示
- 创建项目演示视频