@echo off

:: 1. Force back to main branch
git checkout main

:: 2. Stage all changes
git add .

:: 3. Commit the work
git commit -m "Update: %date% %time%"

:: 4. Sync with GitHub - This "strategy-option theirs" tells Git:
:: "If there is a conflict, trust the version I just made on my computer"
git pull origin main --strategy-option=theirs --no-rebase

:: 5. Final Push
git push origin main

echo.
echo ----------------------------------------------------
echo Process Complete! 
echo ----------------------------------------------------
pause