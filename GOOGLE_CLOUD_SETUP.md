# Google Cloud 部署指南

## ✅ 已完成

1. **Google Cloud SDK 已安装**
   - 版本：554.0.0
   - 位置：`/tmp/google-cloud-sdk`

2. **初始化脚本已创建**
   - 路径：`/workspaces/openclaw/setup-gcp.sh`

---

## 🔑 下一步操作（需要你手动完成）

### 1. 认证 Google Cloud

在 codespace 终端运行：

```bash
source /tmp/google-cloud-sdk/path.bash.inc
gcloud auth login
```

这会：
- 在浏览器中打开 Google 登录页面
- 授权 Google Cloud SDK 访问你的账户
- 获取访问令牌

### 2. 创建或选择 Google Cloud 项目

如果还没有 Google Cloud 项目：

1. 访问 [Google Cloud Console](https://console.cloud.google.com/)
2. 创建一个新项目（或者选择已有项目）
3. 复制项目 ID（格式：`your-project-id`）

### 3. 初始化 gcloud

```bash
gcloud init
```

按照提示选择：
- 选择你的项目 ID
- 选择默认区域（建议：asia-east1 台湾，或 us-central1 美国）

### 4. 验证配置

```bash
gcloud config list
```

---

## 🚀 准备部署应用

当你的应用开发完成后，我们可以：

### 方案 A：部署到 Cloud Run（推荐）

```bash
# 1. 构建 Docker 镜像
gcloud builds submit --tag gcr.io/PROJECT_ID/openclaw

# 2. 部署到 Cloud Run
gcloud run deploy openclaw \
  --image gcr.io/PROJECT_ID/openclaw \
  --platform managed \
  --region asia-east1 \
  --allow-unauthenticated
```

### 方案 B：部署到 App Engine

1. 创建 `app.yaml` 配置文件
2. 运行 `gcloud app deploy`

---

## 💡 快速设置

如果你想在每次登录 codespace 时自动加载 gcloud，可以添加到 `~/.bashrc`：

```bash
echo 'source /tmp/google-cloud-sdk/path.bash.inc' >> ~/.bashrc
```

---

## 📚 有用的命令

```bash
# 查看当前配置
gcloud config list

# 查看项目列表
gcloud projects list

# 设置默认项目
gcloud config set project PROJECT_ID

# 设置默认区域
gcloud config set compute/region asia-east1

# 查看账单
gcloud billing accounts list
```

---

## ❓ 需要帮助？

运行：
```bash
gcloud help
```
