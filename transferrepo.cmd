@echo off
setlocal

rem Define Bitbucket and GitHub repository URLs
set SOURCE_REPO_URL=https://#URLSOURCE#/#REPO#.git
set DESTINATION_REPO_URL=https://#URLDESTINATION#/#rREPO#.git

rem Extract repository name from the GitHub URL
for %%I in ("%DESTINATION_REPO_URL%") do set "REPO_NAME=%%~nxI"
set "REPO_NAME=%REPO_NAME:.git=%"

rem Define the branch to be used
set BRANCH=master

echo %SOURCE_REPO_URL%
echo %DESTINATION_REPO_URL%
echo %REPO_NAME%
echo "%cd%\%REPO_NAME%"

rem Check if the repository directory exists, if not, clone the repository
if not exist "%REPO_NAME%" (
    git clone "%DESTINATION_REPO_URL%"
)

rem Navigate into the cloned repository directory
echo Navigate into the cloned repository directory
cd /d "%cd%\%REPO_NAME%"

rem Add GitHub repository as a remote
git remote add github "%DESTINATION_REPO_URL%"

rem Push the specified branch and tags to GitHub
git push github %BRANCH%
git push github --tags

rem Optionally, update other local clones
git remote set-url origin "%DESTINATION_REPO_URL%"

cd ..

echo Repository transfer completed.
pause
