@echo off

:: Temporary system path at cmd startup

set PATH=%PATH%;"C:\Program Files\Sublime Text 2\"

:: Add to path by command

setx gitpush "%cd%\aws\cert.pem"
REG IMPORT yourfile.reg

DOSKEY add_gitpush=set PATH=%PATH%;"%cd%/gitpush.bat"
DOSKEY add_gitpushs=set PATH=%PATH%;"%cd%/gitpushs.bat"



:: Commands
DOSKEY gitpush=start "%cd%/gitpush.bat" $*
DOSKEY gitpushs=start "%cd%/gitpushs.bat" $*
