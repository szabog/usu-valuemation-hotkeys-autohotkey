/* ****************************************************************************
 * This source code is licensed under MIT License found in the LICENSE file in
 * the root directory of this source tree.
 * Copyright (c) 2020-2021, Gergely Szabó. All rights reserved.
 *
 * FILE NAME   : global-functions.ahk
 *               
 * DESCRIPTION : AutoHotkey script file for global functions that must be
 *               accessible by other scripts designed for USU Valuemation
 *               ITSM tool.
 *               
 *               The functions are called in 'hotkeys-*.ahk' files.
 *               
 * AHK VERSION : 1.1.33
 * USU VERSION : 5.1 Hotfix 27
 * ****************************************************************************
*/

; -----------------------------------------------------------------------------
; FIREFOX ERROR MESSAGE
;
; Error message in AutoHotkey's pop up window when screen or window
; configurations are not compatiable with the scripts.

firefox_error()
{
    MsgBox, The script ran into an issue!`n`nPossible scenarios:`n- Your screen resolution does not match 1920x1080.`n- Firefox is located on a 4th monitor.`n- Firefox is located on a monitor that is stacked.`n- Firefox is in full screen mode (press F11 to exit full screen mode and run the script again). `n`nCheck the corresponding .ahk file.
    Return
}

; -----------------------------------------------------------------------------
; TEXT TEMPLATE SEPARATOR
;
; This function is called from 'hotkeys-text-templates.ahk' and used to
; separate the ticket description template from the end user's email.

text_template_separator()
{
    Send, --{Enter}         ; Separator between description and user's report
    Send, {Up 100}{End}     ; Go to the end of the first line

    Return
}
