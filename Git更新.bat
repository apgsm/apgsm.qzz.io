@echo off
chcp 65001 >nul
:: 直接切换盘符+目录
cd /d "D:\网站\个人主页"

:: 判断目录是否真实存在
if not exist . (
    echo 【错误】目录 D:\网站\个人主页 不存在！检查文件夹路径！
    pause
    exit /b
)

echo 当前工作目录：%cd%
echo =====================================

git init
git add .
git commit -m "Initial commit"
git remote remove origin 2>nul
git remote add origin git@github.com:apgsm/apgsm.qzz.io.git
git push -u origin main

echo.
echo 执行完毕，请查看上面输出有无报错
pause
