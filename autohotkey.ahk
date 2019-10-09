; Fusion 360 Shortcuts
#IfWinActive ahk_exe Fusion360.exe
{
	LShift::^MButton
	Return
	LAlt::
  		Send, +{MButton Down}
  		while GetKeyState("LAlt", "P")
  		{
			If (GetKeyState("Tab", "P"))
			{
				Send, {MButton Up}
				Send, {LAlt down}{tab}
				while GetKeyState("LAlt", "P")
				{
				Sleep, 10
				}
				Send, {LAlt up}
				Return
			}
			Else
				Sleep, 10
  		}
  		Send, {MButton Up}
	Return
	LAlt::LAlt ; restore the original LAlt function
}