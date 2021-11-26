@echo off

IF NOT EXIST %WINDIR%\System32\GroupPolicy goto next

echo Deleting GroupPolicy folder...
RD /S /Q "%WINDIR%\System32\GroupPolicy" || goto error
echo.

:next
IF NOT EXIST %WINDIR%\System32\GroupPolicyUsers goto next2

echo Deleting GroupPolicyUsers folder...
RD /S /Q "%WINDIR%\System32\GroupPolicyUsers" || goto error
echo.

:next2
gpupdate /force

pause
exit

:error
echo.
echo A ocurrido un error. ¨Abre el programa como ADM :) "
echo.
pause
exit