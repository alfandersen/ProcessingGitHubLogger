echo off
set sketchPath=%1
set logFile=%2
set commitMessage=%3
cd %sketchPath%
echo on
git add %logFile%
git commit -m %commitMessage%
git push