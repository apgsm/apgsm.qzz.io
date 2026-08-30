@echo off
cd /d "D:\ÍøÕ¾\¸öÈËÖ÷Ò³"
if not exist . (
    echo ERROR: Directory not found!
    pause
    exit /b
)
echo Current directory: %cd%
echo =====================================

git init
git add .
git commit -m "Initial commit"
git remote remove origin 2>nul
git remote add origin git@github.com:apgsm/apgsm.qzz.io.git
git push -u origin main

echo Operation finished. Check above logs for errors.
pause
