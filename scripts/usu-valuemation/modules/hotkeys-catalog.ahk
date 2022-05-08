/* ****************************************************************************
 * This source code is licensed under MIT License found in the LICENSE file in
 * the root directory of this source tree.
 * Copyright (c) 2020-2021, Gergely Szabó. All rights reserved.
 *
 * FILE NAME   : hotkeys-catalog.ahk
 *               
 * DESCRIPTION : AutHotkey script file for functions inside the Workspace
 *               (Catalog) area of USU Valuemation ITSM tool.
 *               
 *               The functions are called in 'hotkeys-main.ahk'.
 *               
 * AHK VERSION : 1.1.33
 * USU VERSION : 5.1 Hotfix 27
 * ****************************************************************************
*/

/* ----------------------------------------------------------------------------
 * NOTES
 *
 * Known issues:
 * - If there are more than 1 Firefox windows open, the srcipt does not
 * identify in which window USU Valuemation is open, so it might focus the
 * wrong window.
 * - Windows 10: Maximised windows bleed over to other monitors by 8 px.
 *
 * Notices:
 * - Following the update of Mozilla Firefox to version 89 ('Proton redesign'),
 * the compact toolbar density has been removed which the Click functions take
 * into account. The Y mouse coordinates were recalculated with normal density
 * in mind following the update.
 * - The Firefox Proton redesign doesn't affect the scripts here, because these
 * buttons didn't move following the update.
 *
 * Windows taskbar sizes:
 * - Small icons: 30 px
 * - Large icons: 40 px
 *
 * Mozila Firefox top bar sizes (pre-89):
 * - Compact: 60 px
 * - Normal: 72 px
 * - Touch: 80 px
 * 
 * Mozila Firefox top bar sizes (89.0+ - Proton redesign):
 * - Normal: 84 px
 * - Touch: 93 px
 * ----------------------------------------------------------------------------
*/

; -----------------------------------------------------------------------------
; REFRESH CATALOG VIEW
;
; Refreshes the tickets in the catalog's window by clicking the refresh button.

catalog_refresh()
{
    if WinExist("ahk_exe firefox.exe") {
        
        WinActivate, ahk_exe firefox.exe
        WinMaximize, A
        WinGetPos, X, Y, Width, Height, A
        
        ; Get the mouse cursor position to move it back after Click.
        MouseGetPos, xpos, ypos
    } else {
        MsgBox, Mozilla Firefox is not running!
        Return
    }
    
    ; 1st monitor (middle)
    if (X >= -8 && X < 1911) {
        Click, 1860, 1030
        MouseMove, xpos, ypos
    }
    
    ; 2nd monitor (right)
    else if (X >= 1912) {
        Click, 3780, 1050
        MouseMove, xpos, ypos
    }
    
    ; 3rd monitor (left)
    else if (X < -8) {
        Click, -60, 1050
        MouseMove, xpos, ypos
    }
    
    ; More than 3 or no monitors
    else {
        firefox_error()
    }
    Return
}

; -----------------------------------------------------------------------------
; NAVIGATE BACK IN CATALOG
;
; Switches to the previous tab of the catalog by clicking the back button.

catalog_back()
{
    if WinExist("ahk_exe firefox.exe") {
        
        WinActivate, ahk_exe firefox.exe
        WinMaximize, A
        WinGetPos, X, Y, Width, Height, A

        ; Get the mouse cursor position to move it back after Click.
        MouseGetPos, xpos, ypos
    } else {
        MsgBox, Mozilla Firefox is not running!
        Return
    }
    
    ; 1st monitor (middle)
    if (X >= -8 && X < 1911) {
        Click, 300, 1030
        MouseMove, xpos, ypos
    }
    
    ; 2nd monitor (right)
    else if (X >= 1912) {
        Click, 2220, 1050
        MouseMove, xpos, ypos
    }
    
    ; 3rd monitor (left)
    else if (X < -8) {
        Click, -1540, 1050
        MouseMove, xpos, ypos
    }
    
    ; More than 3 or no monitors
    else {
        firefox_error()
    }
    Return
}

; -----------------------------------------------------------------------------
; NAVIGATE FORWARD IN CATALOG
;
; Switches to the next tab of the catalog by clicking the forward button.

catalog_forward()
{
    if WinExist("ahk_exe firefox.exe") {
        
        WinActivate, ahk_exe firefox.exe
        WinMaximize, A
        WinGetPos, X, Y, Width, Height, A

        ; Get the mouse cursor position to move it back after Click.
        MouseGetPos, xpos, ypos
    } else {
        MsgBox, Mozilla Firefox is not running!
        Return
    }
    
    ; 1st monitor (middle)
    if (X >= -8 && X < 1911) {
        Click, 340, 1030
        MouseMove, xpos, ypos
    }
    
    ; 2nd monitor (right)
    else if (X >= 1912) {
        Click, 2260, 1050
        MouseMove, xpos, ypos
    }
    
    ; 3rd monitor (left)
    else if (X < -8) {
        Click, -1580, 1050
        MouseMove, xpos, ypos
    }
    
    ; More than 3 or no monitors
    else {
        firefox_error()
    }
    Return
}
