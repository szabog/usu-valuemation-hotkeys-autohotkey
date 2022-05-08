/* ****************************************************************************
 * This source code is licensed under MIT License found in the LICENSE file in
 * the root directory of this source tree.
 * Copyright (c) 2020-2021, Gergely Szabó. All rights reserved.
 *
 * FILE NAME   : main.ahk
 *                
 * DESCRIPTION : AutoHotkey script file for configuring AHK script behaviour
 *               and loading other AHK files at program launch.
 *                
 * AHK VERSION : 1.1.33
 * ****************************************************************************
*/

; -----------------------------------------------------------------------------
; AUTOHOTKEY SETTINGS
;
; These are generic AutoHotkey software settings, these commands control how
; AHK and the loaded scripts behave while the software is running.

; General
#NoEnv                      ; don't look for environment variables
#KeyHistory 0               ; don't keep key history
#SingleInstance force       ; don't allow scripts to run again
ListLines Off               ; don't keep executed lines in history

; Performance
Process, Priority,, High    ; sets AHK process priority to high

; Input Mode and Delays
SendMode Input              ; disables all attributes below

; These attributes are kept for troubleshooting and benchmarking purposes,
; but they do not affect how the scripts work if SendMode is set to Input.
SetBatchLines, -1           ; disables 10 ms sleep between line executions
SetDefaultMouseSpeed, 0     ; makes mouse movements instant
SetKeyDelay, -1, -1         ; disables key press delay
SetMouseDelay, -1           ; disables mouse click delay

; Additional Delays
SetControlDelay, -1         ; disables Control command delays
setWinDelay, -1             ; disables window action delays

; Misc.
CoordMode, Mouse, Screen    ; use absolute screen coordinates

; -----------------------------------------------------------------------------
; SCRIPTS TO LOAD

#Include %A_ScriptDir%\usu-valuemation\hotkeys-main.ahk
