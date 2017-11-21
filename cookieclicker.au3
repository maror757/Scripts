; Initiate Script

#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{p}", "TogglePause")
HotKeySet("{ESC}", "Terminate")

Main()

Func Main()
    ; Infinite loop
	$iCount = 0
	$jCount = 0
    While 0 < 1
	
        If CheckTime() == true Then
            Local $aCoord = PixelSearch(50, 50, 1800, 1000, 0xC9AD5C)
			If Not @error Then
				Sleep(1000)
				MouseMove ( $aCoord[0], $aCoord[1] , 1 )
				MouseClick("left")
			Else
				MouseMove ( 250, 500 , 1 )
				MouseClick("left")
				$iCount += 1
				$jCount += 1
				
				;Counter for the temple
				If $iCount >= 22500 Then
					$iCount = 0;
					Sleep(200)
					MouseMove ( 1800, 700 , 1 )
					MouseClick("left")
					MouseClick("left")
					Sleep(200)
					MouseMove ( 250, 500 , 1 )
					Sleep(150)
				EndIf
				
				;Counter for the upgrades
				If $jCount >= 22000 Then
					$jCount = 0;
					Sleep(200)
					MouseMove ( 1633, 217 , 1 )
					MouseClick("left")
					Sleep(200)
					MouseMove ( 250, 500 , 1 )
					Sleep(150)
				EndIf
			
			;Sleep(1)
			EndIf
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