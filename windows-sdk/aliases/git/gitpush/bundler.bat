setlocal
cd /d %~dp0
REG IMPORT "%cd%\registry.reg"
DOSKEY gitpush=set PATH=%PATH%;"%cd%\procedure.cmd"
pause