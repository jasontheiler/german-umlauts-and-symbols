; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input
; Sets custom tray icon.
Menu, Tray, Icon, icon.ico, , 1
; Sets custom tooltip title.
Menu, Tray, Tip, German umlauts and symbols`nv1.1.1
; Removes all standard options.
Menu, Tray, NoStandard
; Adds custom suspend option.
Menu, Tray, Add, Suspend shortcuts, handleSuspend
; Adds custom exit option.
Menu, Tray, Add, Exit, handleExit

return

; Handles custom suspend option.
handleSuspend:
Suspend, Toggle
updateMenu()
return

; Handles custom exit option.
handleExit:
ExitApp
return

; Updates menu information.
updateMenu() {
  if (A_IsSuspended) {
    Menu, Tray, Icon, icon-suspended.ico, , 1
    Menu, Tray, Check, Suspend shortcuts
  } else {
    Menu, Tray, Icon, icon.ico, , 1
    Menu, Tray, Uncheck, Suspend shortcuts
  }
}

; Shortcuts

; Suspend shortcuts (Shift + Alt + Pause)
+!Pause::
Suspend, Toggle
updateMenu()
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
