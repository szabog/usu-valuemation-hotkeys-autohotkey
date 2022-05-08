/* ****************************************************************************
 * This source code is licensed under MIT License found in the LICENSE file in
 * the root directory of this source tree.
 * Copyright (c) 2020-2021, Gergely Szabó. All rights reserved.
 *
 * FILE NAME   : hotkeys-main.ahk
 *               
 * DESCRIPTION : AutHotkey script file for loading other AHK scripts and
 *               mapping their functions to keyboard hotkeys.
 *               
 *               This script and others it loads are supposed to be used in
 *               USU Valuemation inside a web browser. It will only work as
 *               expected if your configuration matches mine  -- see below.
 *               If it's different, you must edit the files in MODULES.
 *               
 *               Supported web browsers:
 *               - Full: Mozilla Firefox version 89.0+
 *               - Partial: Mozilla Firefox version 80.0-88.0.1 -- check the
 *               .ahk files to make sure the coordinates are correct.
 *               
 * CONFIG      : - Screen resolution: 1920x1080 (all monitors)
 *               - Screen DPI scaling: 100% (all monitors)
 *               - Windows taskbar position: Bottom
 *               - Windows taskbar icon size: Small
 *               - Mozilla Firefox density: Normal (version 89.0+)
 *               
 * AHK VERSION : 1.1.33
 * USU VERSION : 5.1 Hotfix 27
 * ****************************************************************************
*/

; -----------------------------------------------------------------------------
; MODULES
;
; These scripts are also loaded when AutoHotkey loads this file.

#include %A_ScriptDir%\usu-valuemation\modules\global-functions.ahk
#Include %A_ScriptDir%\usu-valuemation\modules\hotkeys-catalog.ahk
#Include %A_ScriptDir%\usu-valuemation\modules\hotkeys-sidebar.ahk
#Include %A_ScriptDir%\usu-valuemation\modules\hotkeys-text-templates.ahk
#Include %A_ScriptDir%\usu-valuemation\modules\hotkeys-ticket.ahk

; -----------------------------------------------------------------------------
; CATALOG HOTKEYS
;
; Hotkeys inside the catalog window.

!+w::catalog_back()
!+f::catalog_forward()
!+r::catalog_refresh()
!+q::Send {Escape}

; -----------------------------------------------------------------------------
; SIDEBAR HOTKEYS
;
; Hotkeys inside the Sidebar.

!+s::open_ticket()

; -----------------------------------------------------------------------------
; CATALOG HOTKEYS
;
; Text templates for various ticket descriptions and comments.

!+l::strike_voicemail()
!+u::strike_email()
!+n::ticket_description_request()
!+e::ticket_description_incident()
!+i::ticket_description_mi()
!+o::ticket_assign()

; -----------------------------------------------------------------------------
; SIDEBAR HOTKEYS
;
; Hotkeys inside the ticket area.

!+y::add_note()
