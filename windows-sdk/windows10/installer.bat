:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: rename bin
ren "./resources/curl/binn/" "bin"

:: configure aliases
@DOSKEY unzip =  "./resources/native-zipper/unzipper.vbs" $* 
@DOSKEY zip =  "./resources/native-zipper/zipper.vbs" $* 




:: configure msvcr120.dll for 32-bit
echo "Renaming 'msvcr120-32.dll' to to 'msvcr120.dll'"
ren "./resources/msvcr120-32.dll" "msvcr120.dll"

echo "Copying 'msvcr120.dll' for 32-bit to System32
cp "./resources/msvcr120.dll" "C:\Windows\System32\"

echo "Moving 'msvcr120.dll' for 32-bit to SysWOW64"
mv "./resources/msvcr120.dll" "C:\Windows\SysWOW64\"


:: configure msvcr120.dll for 32-bit
echo "Renaming 'msvcr120-64.dll' to to 'msvcr120.dll'"
ren "./resources/msvcr120-32.dll" "msvcr120.dll"

echo "Copying 'msvcr120.dll' for 64-bit to System32
cp "./resources/msvcr120.dll" "C:\Windows\System32\"

:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
























:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install 'Python'
echo "Would you like to download and install 'Python'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'python' installer to run 'python' utilities.
echo "downloading Python installer installer..."
curl -o "%cd%\python-v3.7.3-installer.exe" "https://www.python.org/ftp/python/3.7.3/python-3.7.3-amd64.exe"

echo "Installing python3"
start python-v3.7.3-installer.exe
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################












:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install Node.js
echo "Would you like to download and install 'Node.js'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'Node' installer to create projects with 'Node.js'
echo "downloading NPM installer..."
curl -o "%cd%\node-v10.16.0-x64.msi" "https://nodejs.org/dist/v10.16.0/node-v10.16.0-x64.msi"

echo "Installing NodeJS"
start node-v10.16.0-x64.msi
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################

















:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install Notepad++
echo "Would you like to download and install 'Notepad++'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'Notepad++' text editor
echo "downloading Notepad++ installer installer..."
curl -o "%cd%\npp-installer.exe" "https://notepad-plus-plus.org/repository/7.x/7.7.1/npp.7.7.1.Installer.exe"

echo "Installing Notepad++"
start npp-installer.exe
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################



























:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install Notepad++
echo "Would you like to download and install 'Markdown Pad'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'Notepad++' text editor
echo "downloading Markdown Pad installer..."
curl -o "%cd%\markdownpad-installer.exe" "http://markdownpad.com/download/markdownpad2-setup.exe"

echo "Installing Markdown Pad++"
start markdownpad-installer.exe
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################



























:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install Awesomium
echo "Would you like to download and install 'Awesomium'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'Notepad++' text editor
echo "downloading Awesomium installer..."
curl -o "%cd%\awesomium-installer.exe" "http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe"

echo "Installing Awesomium"
start awesomium-installer.exe
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################



























:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install VSCode
echo "Would you like to download and install 'Visual Studio Code'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: install 'VSCode' to edit code
echo "downloading Visual Studio Code installer installer..."
curl -o "%cd%\vscode-installer.exe" "https://az764295.vo.msecnd.net/stable/2213894ea0415ee8c85c5eea0d0ff81ecc191529/VSCodeUserSetup-ia32-1.36.1.exe"

echo "Installing Visual Studio Code"
start vscode-installer.exe
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################



























:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install git-bash
echo "Would you like to download and install 'git-bash'?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END



:: -----------------------------------------------------------------------------------------
:: install 'Git Bash' installer to clone projects from command line
echo "downloading Git-Bash installer..."
curl -o "%cd%\gitbash-installer.exe" "https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/Git-2.23.0-64-bit.exe"

echo "Installing GitBash"
set __compat_layer=win7
reg Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "./gitbash-installer.exe" /T REG_SZ /D CompatibilityMode /F
reg Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "./gitbash-installer.exe" /d "WIN7"
start gitbash-installer.exe

:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################














:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install Chrome
echo "Would you like to download and install Chrome?"
@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:: -----------------------------------------------------------------------------------------



:: -----------------------------------------------------------------------------------------
:: Download Chrome installer
echo "Downloading Chrome installer"
start "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "https://www.google.com/chrome/thank-you.html?statcb=1&installdataindex=defaultbrowser#"
:END
endlocal
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################




exit