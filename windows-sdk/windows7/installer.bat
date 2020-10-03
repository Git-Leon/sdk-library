:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: rename bin
ren "./resources/curl/binn/" "bin"

:: configure aliases
@DOSKEY unzip =  "./resources/native-zipper/unzipper.vbs" $* 
@DOSKEY zip =  "./resources/native-zipper/zipper.vbs" $* 
@DOSKEY curl = "./resources/curl/bin/curl.exe" $*



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










@ECHO OFF
GOTO:MAIN




:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################
:: -----------------------------------------------------------------------------------------
:: prompt user to install 'some application'
:defaultInstallApplication
    @ECHO OFF
    SETLOCAL ENABLEDELAYEDEXPANSION
        SET applicationName=%~1
        SET executableUrl=%~2
        SET curlExecutionStatement="^"./resources/curl/bin/curl.exe"^ -o %cd%\%applicationName% %executableUrl%"
        
        call:installApplication %applicationName% %curlExecutionStatement%
    ENDLOCAL
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
    SETLOCAL ENABLEDELAYEDEXPANSION
        SET applicationName=%~1
        SET curlExecutionStatement=%~2

        ECHO "Would you like to download and install '%applicationName%'?"
        :PROMPT
            SET /P areYouSure="Are you sure (Y/[N])?"
            IF /I "%areYouSure%" NEQ "y" GOTO END
                ECHO "downloading %applicationName% installer..."
                %curlExecutionStatement%

                ECHO "Installing %applicationName%"
                START %applicationName%
        :END
    ENDLOCAL
EXIT /B 0
:: -----------------------------------------------------------------------------------------
:: ##########################################################################################
:: ##########################################################################################
:: ##########################################################################################




:MAIN
call:defaultInstallApplication "installer_python-v3.7.3.exe" "https://www.python.org/ftp/python/3.7.3/python-3.7.3-amd64.exe"
call:defaultInstallApplication "installer_node-v10.16.0-x64.msi" "https://nodejs.org/dist/v10.16.0/node-v10.16.0-x64.msi"
call:defaultInstallApplication "installer_npp-v7.7.1.exe" "https://notepad-plus-plus.org/repository/7.x/7.7.1/npp.7.7.1.Installer.exe"
call:defaultInstallApplication "installer_awesomium-v1.6.6.exe" "http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe"
call:defaultInstallApplication "installer_markdownpad2.exe" "http://markdownpad.com/download/markdownpad2-setup.exe"
call:defaultInstallApplication "installer_vscode.exe" "https://az764295.vo.msecnd.net/stable/2213894ea0415ee8c85c5eea0d0ff81ecc191529/VSCodeUserSetup-ia32-1.36.1.exe"
call:defaultInstallApplication "installer_git-2.23.0-x64.exe" "https://github.com/git-for-windows/git/releases/download/v2.23.0.windows.1/Git-2.23.0-64-bit.exe"
call:installApplication "installer_git-2.23.0-x64.exe" "curl ^"https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe^" -H ^"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0^" -H ^"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8^" -H ^"Accept-Language: en-US,en;q=0.5^" -H ^"Connection: keep-alive^" -H ^"Cookie: _octo=GH1.1.301249152.1587513929; logged_in=yes; _ga=GA1.2.273956295.1587565010; experiment:homepage_signup_flow=eyJ2ZXJzaW9uIjoiMSIsInJvbGxPdXRQbGFjZW1lbnQiOjIuNTQzMTg1MTg2MjMzMTgyLCJzdWJncm91cCI6ImNvbnRyb2wiLCJjcmVhdGVkQXQiOiIyMDIwLTA0LTI0VDIwOjEzOjU3LjE1NloiLCJ1cGRhdGVkQXQiOiIyMDIwLTA0LTI0VDIwOjEzOjU3LjE1NloifQ==; _device_id=1f66226a4d80f45cd5e59381bc8d49eb; user_session=Y0DkIhHCBmaaOLgT3zHdNd45XEC-h65pVfRre_m8-6Pj6Wtf; __Host-user_session_same_site=Y0DkIhHCBmaaOLgT3zHdNd45XEC-h65pVfRre_m8-6Pj6Wtf; dotcom_user=Git-Leon; tz=America^"%^"2FNew_York; _gh_sess=OBUl70JDCz3FqwklINMjrJEChHP3fw3a^"%^"2BdITghyx6bbilT4c5kMMZ^"%^"2FXhjfJMJrBK83rMjIy^"%^"2BeQTatiD0cm8oEUzEqQslrPjyEL8Fl7WaDlz0TLu4vu0sM6KH247GnT4tWDsQMN0Npi9sdftJkOepBsIPdIvx4MaswqK1d4jAdz9^"%^"2Fv76ebtdgrDIY8PY3ybCjxvjMfcUMG6^"%^"2BpXz5fAGg^"%^"2FSyhPbMeM2Cez65xSqKNNnmav^"%^"2FjRzaCQFNllAQ^"%^"2FNAWYzvIixbMUpEgoPvZeABFcdpo78GGxa36WWuYF7Bdzj0zEUfAWrKEfOTFjrZxFifHQmXNH^"%^"2FZhzKgkWiXK3QDa3S02ynYuwSqGHH^"%^"2FpMSrM3NPz6Qll79OOQZIqG4^"%^"2BHU18mMAHueBvwH5M9IwNElLZzcHR2TACNuvH4yPIJAOWrC9BZUwrcWf8GI2m8MWYn0F^"%^"2BZLm^"%^"2FVj^"%^"2FekpkmaNjeXat8ej6wh6W^"%^"2FkFtxPgXS612eMpRn45ndHbS43iutBZScLy519W0eEEXHJ7brE9SM2GiEA6uAYvAI8^"%^"2FBaSlvFBBeBrrJEi1A05CtvzMR^"%^"2FFSxT9^"%^"2BXyQ6wvtBtKiLjCWVC7nLiiGqwf7z^"%^"2BY7MUKtjr9QvnGPBGND7oZRYGasfYcN0rzhF8^"%^"2B4lif5Yb7ii0Jbj3xWeqiJolIgHQj2EKuEyb2QQCJdlcU2YcIJ562Y^"%^"2B0x1Y6sfXqFIroKV7oehWXnFbQBgqUlF^"%^"2FOdaIj^"%^"2BVOiMf4gRanbbQT7271VegyZDeuAW^"%^"2BvODXC1PG971zDwM7Ih4oKmUsyTQ6oEbCQZxDwVwcFDVUrqU5A992G7rY5RAvUKhOxAhKznc2UgH44PAiGIOivuv01XQ--ra^"%^"2BaBhUvbJx^"%^"2BGcUw--H0j8SEFJSgtcMJI3t0yCZA^"%^"3D^"%^"3D; has_recent_activity=1^" -H ^"Upgrade-Insecure-Requests: 1^""
call:installApplication "installer_intellij-v2020.2.1.exe" "curl -o ^"%cd%\installer_intellij-v2020.2.1.exe^" ^"https://download-cf.jetbrains.com/idea/ideaIU-2020.2.1.exe^" -H ^"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0^" -H ^"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8^" -H ^"Accept-Language: en-US,en;q=0.5^" -H ^"Referer: https://www.jetbrains.com/idea/download/download-thanks.html?platform=windows^" -H ^"Connection: keep-alive^" -H ^"Cookie: _gcl_au=1.1.1556281742.1599423447; _ga=GA1.1.1454185254.1599423448; _gid=GA1.2.2076224765.1599423448; _ga_TNKGS6FGXX=GS1.1.1599423447.1.1.1599423467.0^" -H ^"Upgrade-Insecure-Requests: 1^""
call:installApplication "installer_pycharm-v2020.2.2.exe" "curl -o ^"%cd%\installer_pycharm-v2020.2.2.exe^" ^"https://download-cf.jetbrains.com/python/pycharm-community-2020.2.2.exe^" -H ^"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0^" -H ^"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8^" -H ^"Accept-Language: en-US,en;q=0.5^" -H ^"Referer: https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=windows&code=PCC^" -H ^"Connection: keep-alive^" -H ^"Cookie: _ga=GA1.1.594083364.1573664930; _hjid=71889476-ad4a-4ac6-adbf-5b18f197ce6e; _ga_TNKGS6FGXX=GS1.1.1601590894.6.1.1601590896.58; _gcl_au=1.1.996650656.1596036073; _ga_1QPM2PL8QR=GS1.1.1601580227.1.0.1601580227.0; _gid=GA1.2.1807665973.1601580228; _gat_UA-47631155-3=1; _mkto_trk=id:426-QVD-114&token:_mch-jetbrains.com-1601590894765-43628; _fbp=fb.1.1601590894939.762435895; _uetsid=d006bdc0041b11eba84347b1f8af49b0; _uetvid=d006c2a0041b11eb963d6d7533874fca^" -H ^"Upgrade-Insecure-Requests: 1^""
