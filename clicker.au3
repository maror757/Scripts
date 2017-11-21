; Initiate Script

#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{p}", "TogglePause")
HotKeySet("{ESC}", "Terminate")

Main()

Func Main()
    ; Infinite loop
	MouseMove ( 800, 630 , 1 )
    While 0 < 1
	
	$iCount = 0
	
	
        If CheckTime() == true Then
            ;If CheckInternetConnection() == true Then
                ; Internet Connection is true
                ; So no worries
            ;Else
                ; Internet Connection is false
                ; Perform mouse click  
            ;EndIf 
			;MouseClick("left")
			$iCount += 1
			
			While $iCount <= 1
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 800, 700 , 0 )
				$iCount += 1
			WEnd
			
			While $iCount <= 2
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 800, 800 , 0 )
				$iCount += 1
			WEnd
			
			While $iCount <= 3
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 1000, 800 , 0 )
				$iCount += 1
			WEnd
			
			While $iCount <= 4
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 1000, 700 , 0 )
				$iCount += 1
			WEnd
			
			While $iCount <= 5
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 1000, 630 , 0 )
				$iCount += 1
			WEnd
			
			While $iCount <= 6
				$counter = 0;
				Do
					MouseClick("left")
					$counter += 1;
				Until $counter = 10
				
				MouseMove ( 800, 630 , 0 )
				$iCount += 1
			WEnd
			
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