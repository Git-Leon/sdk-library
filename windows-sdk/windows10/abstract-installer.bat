:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: rename bin
@ECHO OFF
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


GOTO:MAIN
@ECHO ON
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################









:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install 'some application'
:defaultInstallApplication
    @ECHO OFF
    echo default install app
    setlocal
        SET applicationName = %~1
        SET executableApplication = %applicationName%.exe
        SET executableUrl = %~2
        SET curlExecutionStatement = curl -o "%cd%\%executableApplication%" "%executableUrl%"
        call:installApplication %applicationName% %curlExecutionStatement%
    endlocal
EXIT /B 0
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################







:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install 'some application'
:installApplication
    @ECHO OFF
    echo install app
    setlocal
        SET applicationName = %~1
        SET executableApplication = %applicationName%.exe
        SET curlExecutionStatement = %~2
        SET curlExecutionStatement = curl -o "%cd%\%executableApplication%" "%executableUrl%"
        
        echo "Would you like to download and install '%applicationName%'?"
        :PROMPT
            SET /P AREYOUSURE="Are you sure (Y/[N])?"
            IF /I %AREYOUSURE% NEQ "Y" GOTO END


            :: -----------------------------------------------------------------------------------------
            :: install 'python' installer to run 'python' utilities.
            echo "downloading %applicationName% installer..."
            %curlExecutionStatement%

            echo "Installing %applicationName%"
            start %applicationName%.exe
        :END
    endlocal
EXIT /B 0
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################





:MAIN
call:defaultInstallApplication installer_pythonv3.7.3 https://www.python.org/ftp/python/3.7.3/python-3.7.3-amd64.exe
call:defaultInstallApplication installer_node-v10.16.0-x64 https://nodejs.org/dist/v10.16.0/node-v10.16.0-x64.msi
call:defaultInstallApplication installer_npp-v7.7.1 https://notepad-plus-plus.org/repository/7.x/7.7.1/npp.7.7.1.Installer.exe
call:defaultInstallApplication installer_awesomium-v1.6.6 http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe
call:defaultInstallApplication installer_markdownpad2 http://markdownpad.com/download/markdownpad2-setup.exe
call:defaultInstallApplication installer_vscode https://az764295.vo.msecnd.net/stable/2213894ea0415ee8c85c5eea0d0ff81ecc191529/VSCodeUserSetup-ia32-1.36.1.exe
call:defaultInstallApplication installer_git-2.23.0-x64 https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/Git-2.23.0-64-bit.exe




::curl -o "%cd%\intellij-installer.exe" "https://download-cf.jetbrains.com/idea/ideaIU-2020.2.1.exe" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://www.jetbrains.com/idea/download/download-thanks.html?platform=windows" -H "Connection: keep-alive" -H "Cookie: _gcl_au=1.1.1556281742.1599423447; _ga=GA1.1.1454185254.1599423448; _gid=GA1.2.2076224765.1599423448; _ga_TNKGS6FGXX=GS1.1.1599423447.1.1.1599423467.0" -H "Upgrade-Insecure-Requests: 1"
::curl -o "%cd%\pycharm-installer.exe" "https://download-cf.jetbrains.com/python/pycharm-community-2020.2.2.exe" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" -H "Referer: https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=windows&code=PCC" -H "Connection: keep-alive" -H "Cookie: _ga=GA1.1.594083364.1573664930; _hjid=71889476-ad4a-4ac6-adbf-5b18f197ce6e; _ga_TNKGS6FGXX=GS1.1.1601590894.6.1.1601590896.58; _gcl_au=1.1.996650656.1596036073; _ga_1QPM2PL8QR=GS1.1.1601580227.1.0.1601580227.0; _gid=GA1.2.1807665973.1601580228; _gat_UA-47631155-3=1; _mkto_trk=id:426-QVD-114&token:_mch-jetbrains.com-1601590894765-43628; _fbp=fb.1.1601590894939.762435895; _uetsid=d006bdc0041b11eba84347b1f8af49b0; _uetvid=d006c2a0041b11eb963d6d7533874fca" -H "Upgrade-Insecure-Requests: 1"