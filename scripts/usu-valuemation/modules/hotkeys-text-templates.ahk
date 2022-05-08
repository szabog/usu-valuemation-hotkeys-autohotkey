/* ****************************************************************************
 * This source code is licensed under MIT License found in the LICENSE file in
 * the root directory of this source tree.
 * Copyright (c) 2020-2021, Gergely Szabó. All rights reserved.
 *
 * FILE NAME   : hotkeys-text-templates.ahk
 *               
 * DESCRIPTION : AutoHotkey script file for inserting text templates into
 *               textboxes inside USU Valuemation ITSM tool.
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
 * WYSIWYG text editor tags and AutoHotkey functions:
 * ^b: Bold text (Ctrl+B)
 * ^{v}: Pastes copied text (Ctrl+V)
 * {key-name}: Key press with raw input
 * ----------------------------------------------------------------------------
*/

; -----------------------------------------------------------------------------
; TICKET DESCRIPTIONS
;
; IT ticket descriptions used for formatting the end user's request or incident
; report to an easily readable text format.
;
; Text templates for:
; - Service request
; - Incident
; - Major incident

; Service request
ticket_description_request()
{
    Send, {Up 100}{Home}    ; Go to the beginning of the first line
    
    ; Insert the template
    Send, ^bLanguage:^b{Space}{Enter}
    Send, ^bDescription/translation:^b{Enter 3}
    Send, ^bKM ref.:^b (not found) (keywords: ){Space}{Enter}
    Send, ^bActions taken:^b -{Enter 2}
    Send, ^bScreenshots/attachments:^b -{Enter 2}
    
    text_template_separator()
}

; Incident
ticket_description_incident()
{
    Send, {Up 100}{Home}    ; Go to the beginning of the first line
    
    ; Insert the template
    Send, ^bLanguage:^b{Space}{Enter}
    Send, ^bOS:^b -{Enter}
    Send, ^bDescription/translation:^b{Enter 3}
    Send, {Space 2}^bSteps to reproduce:^b{Enter}
    Send, {Space 2}1){Space}{Enter 2}
    Send, ^bKM ref.:^b (not found) (keywords: ){Space}{Enter}
    Send, ^bTroubleshooting steps:^b -{Enter 2}
    Send, ^bScreenshot of the error:^b -{Enter 2}
    
    text_template_separator()
}

; Major incident
ticket_description_mi()
{
    Send, {Up 100}{Home}    ; Go to the beginning of the first line
    
    ; Insert the template
    Send, ^bLanguage:^b{Space}{Enter}
    Send, ^bDescription/translation:^b{Enter 3}
    Send, {Space 2}^bSite - area:^b{Space}{Enter}
    Send, {Space 2}^bNumber of affected users:^b{Space}{Enter}
    Send, {Space 2}^bAffected applications:^b{Space}{Enter}
    Send, {Space 2}^bAffected services:^b{Space}{Enter}
    Send, {Space 2}^bAffected devices:^b{Space}{Enter}
    Send, {Space 2}^bEthernet status (internet, intranet websites):^b{Space}{Enter}
    Send, {Space 2}^bTelephone status (incoming, outgoing calls):^b{Space}{Enter}
    Send, {Space 2}^bFirst occurrence:^b At approx. YYYY-MM-DD HH:mm{Space}{Enter 2}
    Send, ^bKM ref.:^b N/A{Space}{Enter}
    Send, ^bTroubleshooting steps:^b -{Enter 2}
    Send, ^bScreenshot of the error:^b -{Enter 2}
    
    text_template_separator()
}

; -----------------------------------------------------------------------------
; STRIKE COMMENTS
;
; IT ticket comments for recording end user's unavailability for contact.

strike_voicemail()
{
    Sleep, 150

    ; Insert the template
    Send, Contact number ^{v} was not reached; left v/mail.
}

strike_email()
{
    Sleep, 150

    ; Insert the template
    Send, Contact number ^{v} was not reached; sent email.
}

; -----------------------------------------------------------------------------
; TICKET ASSIGNMENT MESSAGE
;
; Message for 2nd-level support group when assigning/forwarding a ticket.

ticket_assign()
{
    Sleep, 150
    
    ; Insert the template
    Send, Please provide assistance. Let us know if you require more details or it's not in your scope of support.
}
