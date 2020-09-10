@echo off
set commitMessage=%1
set branch=%2
git add .
git commit -m %commitMessage%
git push -u origin %branch%
exit