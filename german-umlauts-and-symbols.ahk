; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input
; Sets custom tooltip title.
Menu, Tray, Tip, German umlauts and symbols`nv1.0.0
; Sets custom icon.
Menu, Tray, Icon, icon.ico, , 1

; Toggle on / off (Shift + Alt + Pause)
+!Pause::
Suspend, Toggle

if (A_IsSuspended)
  Menu, Tray, Icon, icon-suspended.ico, , 1
else
  Menu, Tray, Icon, icon.ico, , 1

return

; ä (Alt + a)
!a:: Send, ä

; Ä (Shift + Alt + a)
+!a:: Send, Ä

; ö (Alt + o)
!o:: Send, ö

; Ö (Shift + Alt + o)
+!o:: Send, Ö

; ü (Alt + u)
!u:: Send, ü

; Ü (Shift + Alt + u)
+!u:: Send, Ü

; ß (Alt + s)
!s:: Send, ß

; € (Alt + e)
!e:: Send, €
