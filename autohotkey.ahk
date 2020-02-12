;
; Made by Maurizio Natali, SaggiaMente.com
;
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;--------------------
; Clipboard
;--------------------
!c::Send ^c ;Copy 
!v::Send ^v ;Paste 
!x::Send ^x ;Cut 
+!#v::Send +^v ;Paste special


;--------------------
; Backup Native Win
; commands before ovveride 
;--------------------
+^Left::Send #{Left} ;window to left
+^Right::Send #{Right} ;window to right
+^#Left::Send #+{Left} ;window to left space
+^#Right::Send #+{Right} ;window to left space
!h::Send !{Esc} ;bring window to the back
;#d Show desktop
;#, hide windows during press

;--------------------
; Substitutions
;--------------------
;CAPS accented
!+q::Send À
!+e::Send É
!+r::Send Ì 
!+t::Send Ò
!+y::Send Ù

;Special Chars
!5::Send ~
!+-::Send —
#c::Send ©

;Win like "Sx Alt gr"
#à::Send {#}
#ò::Send {@}
#+è::SendRaw, {
#*::SendRaw, }


;--------------------
; System
;--------------------
;Undo/Redo
!z::Send ^z ;Undo
!+z::Send ^y ;Undo

;Spotlight mimic 
!Space::Send #s

;Smart Screenshot
!+3::Send #*{PrintScreen} ;All Screen to imagel
^!+3::Send #*{PrintScreen} ;All Screen to clipboard
!+4::Send #+s ;Windows 10

;System
#!Esc::Send +^{Esc} ;activity
^!q::DllCall("LockWorkStation") ;lockscreen
#!,::Send #i ;system preferences 

;--------------------
; Window & Apps
;--------------------
!w::Send ^w ;close window
!q::WinClose, A ;close app
!t::Send ^t ;new tab
!s::Send ^s ;save
!f::Send ^f ;find
!n::Send ^n ;new window
!r::Send ^r ;reload
!m::Send #{Down} ;minimize window
!,::Send ^, ;app preferences, partially supported

;--------------------
; Cursor & Selection
;--------------------
^!Space::Send #è ;Float Emoji Panel
#BS::Send ^{BS} ;Delete left word
#Del::Send ^{Del} ;Delete right word
!+BS::Send +{Home}{Del} ;Delete Line

;smartmove for cursor
!Up::Send ^{Home}
!Down::Send ^{End}
!Left::Send {Home}
!Right::Send {End}

;Skip words
#Left::Send ^{Left}
#Right::Send ^{Right}
#Up::Send ^{Up}
#Down::Send ^{Down}

;Select Lines
!+Up::Send ^+{Home}
!+Down::Send ^+{End}
!+Left::Send +{Home}
!+Right::Send +{End}

;Select Words
+#Left::Send ^+{Left}
+#Right::Send ^+{Right}
+#Up::Send +{PgUp}
+#Down::Send +{PgDn}
+#Home::Send +{Home}
+#End::Send +{End}

;Select All
!a::Send ^a

;Finderize Explorer
;Condition error, suspended for further developing
;ifWinActive, ahk_class CabinetWClass
;{
;  #!i::Send !1 ;Info file
;  Enter::Send {F2} ;Rename
;  !+n::Send !{2} ;New Folder
;}
