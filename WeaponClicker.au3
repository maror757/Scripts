; Initiate Script

#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{p}", "TogglePause")
HotKeySet("{ESC}", "Terminate")

Main()

Func Main()
    ; Infinite loop
	
    While 0 < 1
	
        If CheckTime() == true Then
            ;If CheckInternetConnection() == true Then
                ; Internet Connection is true
                ; So no worries
            ;Else
                ; Internet Connection is false
                ; Perform mouse click  
            ;EndIf 
			MouseMove ( 900, 850 , 1 )
			MouseClick("left")
			Sleep(100)
			
		Else; Sleep for 15 minutes
			Exit		
        EndIf
        
		
		
	WEnd
EndFunc

; The function checks if the current time is between 00:00 and 05:00
Func CheckTime()
    If @Hour >= 00 AND @Hour <= 23 Then
        Return true
    Else
        Return false
    EndIf
EndFunc

; The function checks if currently is a internet connection
Func CheckInternetConnection()
    Local $Connected = false
    $ping = Ping("www.google.com")
    If $ping > 0 Then
        $Connected = true
    EndIf
    Return $Connected
EndFunc

;function to pause	
Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc   ;==>TogglePause

;function to terminate
Func Terminate()
    Exit
EndFunc   ;==>Terminate