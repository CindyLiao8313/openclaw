#!/bin/bash
# Google Cloud 初始化脚本

# 加载 Google Cloud SDK
source /tmp/google-cloud-sdk/path.bash.inc

echo "📦 Google Cloud SDK 已安装"
echo "版本："
gcloud --version

echo ""
echo "=========================================="
echo "🔑 下一步：认证 Google Cloud"
echo "=========================================="
echo ""
echo "请运行以下命令完成认证："
echo ""
echo "  source /tmp/google-cloud-sdk/path.bash.inc"
echo "  gcloud auth login"
echo ""
echo "这会打开浏览器让你登录 Google 账户并授权。"
echo ""
echo "认证完成后，运行以下命令配置项目："
echo ""
echo "  gcloud init"
echo ""
echo "=========================================="
