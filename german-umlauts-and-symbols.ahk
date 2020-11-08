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

; [Shift + Alt + Pause] - Suspends shortcuts.
+!Pause::
Suspend, Toggle
updateMenu()
return

; [Alt + a] - Sends ä.
!a:: Send, ä

; [Shift + Alt + a] - Sends Ä.
+!a:: Send, Ä

; [Alt + o] - Sends ö.
!o:: Send, ö

; [Shift + Alt + o] - Sends Ö.
+!o:: Send, Ö

; [Alt + u] - Sends ü.
!u:: Send, ü

; [Shift + Alt + u] - Sends Ü.
+!u:: Send, Ü

; [Alt + s] - Sends ß.
!s:: Send, ß

; [Alt + e] - Sends €.
!e:: Send, €
