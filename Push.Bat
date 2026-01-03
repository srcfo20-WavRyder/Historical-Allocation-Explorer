@echo off
git add index.html
git commit -m "Update: %date% %time%"
git push
echo Pushed to GitHub successfully!
pause