call runcrud.bat
if "%ERRORLEVEL%" == "0" goto startbrowser
echo.
echo runcrud.bat has errors - breaking work
goto fail

:startbrowser
start "C:\ProgramFiles(x86)\Google\Chrome\Application\chrome.exe" "http://localhost:8080/crud/v1/task/getTasks"
goto end

:fail
echo.
echo There were errors

:end
echo.
echo Google Chrome is opened.