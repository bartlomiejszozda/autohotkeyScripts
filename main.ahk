;do we need {} in if else?
; #-win, ^-ctrl, +-shift, !-alt
#UseHook, On
#HotkeyModifierTimeout 100

GroupAdd putty, ahk_class PuTTY
GroupAdd putty, ahk_class mintty
/*
ifWinActive ahk_group putty
{
^!d::
	ifWinActive ahk_group putty
		Send ^w
	else
		Send ^{Backspace}
	
^!x::
	ifWinActive ahk_group putty
		Send !d
	else
		Send ^{Delete}

!b::
	ifWinActive ahk_group putty
		Send !b
	else
		Send ^{Left}
		
!w::
	ifWinActive ahk_group putty
		Send !f
	else
		Send ^{Right}
	return
}

^!d::
	ifWinActive ahk_group putty
		Send ^w
	else
		Send ^{Backspace}
	
^!x::
	ifWinActive ahk_group putty
		Send !d
	else
		Send ^{Delete}

!b::
	ifWinActive ahk_group putty
		Send !b
	else
		Send ^{Left}
		
!w::
	ifWinActive ahk_group putty
		Send !f
	else
		Send ^{Right}
	return
*/


;'w' and 'b' words movements
<!b::Send ^{Left}
<!w::Send ^{Right}

;shift + 'w' and 'b' words movements 
+<!b::Send +^{Left}
+<!w::Send +^{Right}


;arrows
<!l::SendInput {Right}
<!h::SendInput {Left}
<!k::SendPlay {Up}           ; if not works then probably your script was started without admin rights. Exit this script then run motherOfScripts should help.
<!j::SendPlay {Down}         ; if not works then probably your script was started without admin rights. Exit this script then run motherOfScripts should help.


;arrows combinations
#<!l::Send #{Right}
#<!h::Send #{Left}
#<!k::Send #{Up}
#<!j::Send #{Down}

+<!l::SendInput +{Right}
+<!h::SendInput +{Left}
+<!k::SendInput +{Up}
+<!j::SendInput +{Down}

<^<!l::Send ^{Right}
;<^<!h::Send ^{Left}
;<^<!k::Send ^{Up}
;<^<!j::Send ^{Down}

+<^<!l::Send +^{Right}
+<^<!h::Send +^{Left}
+<^<!k::Send +^{Up}
+<^<!j::Send +^{Down}

#+<!l::Send #+{Right}
#+<!h::Send #+{Left}
#+<!k::Send #+{Up}
#+<!j::Send #+{Down}




;delete backspace
<!x::Send {Delete}
<!d::Send {Backspace}

;delete backspace one word
;<^<!x::Send {Ctrl Down}{Right}{Backspace}{Ctrl Up}
<^<!x::
	Send +^{Right}
	Send {Backspace}
return
<^<!d::Send ^{Backspace}



;home end
<!i::Send {Home}
<!a::Send {End}

+<!i::Send +{Home}
+<!a::Send +{End}



;small o big O
<!o::Send {End}{Enter}
+<!o::Send {Home}{Enter}{Up}


;undo redo
<!u::^z
<!r::^y

;delete till end of line
+<!d::Send {Shift Down}{End}{Shift Up}{Delete}

;left backslash to shift
SC056::LShift


;copy and delete (mainly for Excel usage)
<!c::
	Send, {Ctrl Down}c{Ctrl Up}
	Sleep, 5
	Send, {Delete}
return
