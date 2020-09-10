echo off
set commitMessage=%1
set branch=%2
shift
shift
git add .
git commit -m %commitMessage%
git push -u origin %branch%