# GitHub Pages部署 - 详细步骤

## 📋 部署前准备

### 1. GitHub账号准备
- 确保有GitHub账号
- 登录GitHub.com

### 2. 仓库名称
```
openclaw-autopublisher
```

## 🚀 部署步骤

### 第1步：创建GitHub仓库
1. 访问 https://github.com/new
2. 仓库名称：`openclaw-autopublisher`
3. 公开仓库 (Public)
4. 初始化README文件：✅ 勾选
5. 创建仓库

### 第2步：上传文件到仓库
选择以下任意一种方式：

#### 方式A: Web界面上传
1. 进入刚创建的仓库
2. 点击 "Add file" → "Upload files"
3. 选择`tiktok-deploy`文件夹内容
4. 提交更改

#### 方式B: Git命令 (推荐)
```bash
# 克隆仓库
git clone https://github.com/[你的用户名]/openclaw-autopublisher.git

# 复制文件
cd openclaw-autopublisher
cp -r /path/to/tiktok-deploy/* .

# 提交和推送
git add .
git commit -m "Add TikTok auto publisher website"
git push
```

### 第3步：启用GitHub Pages
1. 仓库 → Settings → Pages
2. Source: 选择 `main` branch
3. 保存设置

### 第4步：获得URL
等待几分钟后，你的网站将出现在：
```
https://[你的用户名].github.io/openclaw-autopublisher/
```

## 📱 TikTok申请信息

### Web/Desktop URL
```
https://你的用户名.github.io/openclaw-autopublisher/
```

### 隐私政策URL
```
https://你的用户名.github.io/openclaw-autopublisher/privacy-policy.html
```

### 使用条款URL
```
https://你的用户名.github.io/openclaw-autopublisher/terms-of-service.html
```

## 🎯 关键文件说明

### `index.html` - 主页面
- 应用介绍和功能展示
- 专业外观，符合TikTok审核标准

### `privacy-policy.html` - 隐私政策
- 详细的隐私保护说明
- 符合GDPR和TikTok要求

### `terms-of-service.html` - 使用条款
- 明确的使用规则和责任
- 保护开发者权益

## 📊 验证部署

部署成功后访问：
- 主页：`https://你的用户名.github.io/openclaw-autopublisher/`
- 应显示"OpenClaw Auto Publisher"页面

## 🚨 注意事项

- GitHub Pages需要几分钟才能生效
- 确保所有URL能正常访问
- 截图保存验证页面，用于TikTok申请
- 如果遇到404错误，等待几分钟再试

## 🔧 替代方案

如果GitHub Pages有问题，可以使用：
- **Netlify**: 拖拽zip文件到 https://app.netlify.com/drop
- **Vercel**: 需要账号注册
- **本地服务器**: 暂时测试使用